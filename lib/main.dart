import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/storage/token_storage.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/game_logo.dart';
import 'features/auth/presentation/controllers/auth_controller.dart';
import 'features/auth/presentation/screens/login_screen.dart';
import 'features/game/presentation/screens/game_home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: const MudApp(),
    ),
  );
}

class MudApp extends StatelessWidget {
  const MudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '테일바운드',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      // 모든 화면 뒤에 다크 판타지 그라데이션 배경을 깐다(Scaffold는 투명).
      builder: (context, child) => DecoratedBox(
        decoration: appBackground,
        child: child,
      ),
      home: const AuthGate(),
    );
  }
}

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider);

    final session = auth.value;
    if (session != null) return GameHomeScreen(session: session);

    // 세션 복원 중에만 스플래시. 로그인 요청 중 로딩은 LoginScreen이 처리한다.
    if (auth.isLoading && !auth.hasValue && auth.error == null) {
      return const SplashScreen();
    }

    return const LoginScreen();
  }
}
