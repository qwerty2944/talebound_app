import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/equipment.dart';
import '../../domain/entities/game_item.dart';
import '../controllers/equipment_controller.dart';
import '../controllers/inventory_controller.dart';
import 'widgets/equipment_tab.dart';
import 'widgets/inventory_tab.dart';
import 'widgets/item_detail_sheet.dart';

/// 인벤토리 + 장비. 웹 InventoryTab/EquipmentTab 패리티(모바일 2탭).
class InventoryScreen extends ConsumerStatefulWidget {
  const InventoryScreen({super.key});

  @override
  ConsumerState<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends ConsumerState<InventoryScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tab = TabController(length: 2, vsync: this);

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  Future<void> _equip(GameItem item) async {
    try {
      final slotName =
          await ref.read(equipmentControllerProvider.notifier).equip(item);
      _toast('$slotName 슬롯에 「${item.nameKo}」 장착');
    } catch (e) {
      _toast(_msg(e), error: true);
    }
  }

  Future<void> _unequip(EquipmentSlot slot, EquippedItem item) async {
    try {
      await ref.read(equipmentControllerProvider.notifier).unequip(slot);
      _toast('「${item.itemName}」 해제');
    } catch (e) {
      _toast(_msg(e), error: true);
    }
  }

  String _msg(Object e) =>
      e is StateError ? e.message : '처리 중 오류가 발생했습니다.';

  void _toast(String msg, {bool error = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(msg),
        backgroundColor: error ? AppColors.danger : AppColors.surfaceAlt,
        behavior: SnackBarBehavior.floating,
      ));
  }

  void _openDetail(InventoryEntry entry) {
    final item = entry.item;
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => ItemDetailSheet(
        entry: entry,
        onEquip: (item != null && entry.isEquipment)
            ? () {
                Navigator.of(context).pop();
                _equip(item);
              }
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final inventory = ref.watch(inventoryControllerProvider);
    final profile = ref.watch(profileControllerProvider);
    final equipment = profile.value?.equipment ?? Equipment.empty;
    // 장착 진행 여부(버튼 잠금).
    final busy = ref.watch(equipmentControllerProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('가방'),
        bottom: TabBar(
          controller: _tab,
          indicatorColor: AppColors.accent,
          labelColor: AppColors.accent,
          unselectedLabelColor: AppColors.textMuted,
          tabs: const [
            Tab(text: '인벤토리', icon: Icon(Icons.backpack, size: 18)),
            Tab(text: '장비', icon: Icon(Icons.shield_moon, size: 18)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tab,
        children: [
          InventoryTab(
            inventory: inventory,
            onRefresh: () =>
                ref.read(inventoryControllerProvider.notifier).refresh(),
            onTapItem: _openDetail,
          ),
          EquipmentTab(
            equipment: equipment,
            busy: busy,
            loading: profile.isLoading,
            onUnequip: _unequip,
          ),
        ],
      ),
    );
  }
}
