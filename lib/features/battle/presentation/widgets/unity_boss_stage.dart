import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/monster.dart';

/// 웹 유니티 뷰어 페이지 (talebound_frontend `app/unity-viewer`).
const String _kViewerBaseUrl = 'https://talebound-web.vercel.app/unity-viewer';

/// 유니티 로드 타임아웃. 넘어가면 스테이지를 숨기고 텍스트 전투로 폴백한다.
const Duration _kReadyTimeout = Duration(seconds: 10);

/// 부모(전투 화면)가 유니티 애니메이션을 제어하기 위한 핸들.
///
/// 위젯 내부 상태에 붙어(`_attach`) `play()` 호출을 전달한다. 위젯이 아직
/// 준비되지 않았거나 로드에 실패한 경우 조용히 무시되어 전투 로직을 막지 않는다.
class UnityStageController {
  _UnityBossStageState? _state;

  void _attach(_UnityBossStageState state) => _state = state;
  void _detach(_UnityBossStageState state) {
    if (identical(_state, state)) _state = null;
  }

  /// 애니메이션 재생. state: IDLE / ATTACK / HIT / VICTORY / DEATH (대소문자 무시).
  void play(String state) => _state?.play(state);
}

/// 보스전 상단에 표시되는 유니티 캐릭터 스테이지.
///
/// WebView(WKWebView)로 웹 유니티 뷰어를 임베드한다. 로드/타임아웃 실패 시
/// 스스로 숨겨지며(`SizedBox.shrink`), 전투 진행에는 어떤 블로킹도 주지 않는다.
class UnityBossStage extends StatefulWidget {
  const UnityBossStage({
    super.key,
    required this.controller,
    required this.monster,
    this.appearanceQuery = const {},
  });

  final UnityStageController controller;
  final Monster monster;

  /// 외형 파라미터(스프라이트 인덱스/색상). 비어 있으면 기본 외형으로 폴백.
  final Map<String, String> appearanceQuery;

  @override
  State<UnityBossStage> createState() => _UnityBossStageState();
}

class _UnityBossStageState extends State<UnityBossStage> {
  WebViewController? _webController;
  Timer? _readyPoll;
  Timer? _timeout;
  bool _ready = false;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    widget.controller._attach(this);
    _initWebView();
  }

  void _initWebView() {
    final uri = Uri.parse(_kViewerBaseUrl).replace(
      queryParameters: widget.appearanceQuery.isEmpty
          ? null
          : widget.appearanceQuery,
    );

    late final WebViewController controller;
    try {
      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(Colors.transparent)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (_) => _startReadyPolling(),
            onWebResourceError: (error) {
              // 메인 프레임 로드 실패만 폴백 처리 (서브리소스 오류는 무시)
              if (error.isForMainFrame ?? true) _markFailed();
            },
          ),
        )
        ..loadRequest(uri);
    } catch (_) {
      _markFailed();
      return;
    }

    _webController = controller;

    // 전체 타임아웃: 준비 신호를 못 받으면 폴백
    _timeout = Timer(_kReadyTimeout, () {
      if (!_ready) _markFailed();
    });
  }

  /// window.tbReady / document.title 을 폴링해 유니티 준비 완료를 감지.
  void _startReadyPolling() {
    _readyPoll?.cancel();
    _readyPoll = Timer.periodic(const Duration(milliseconds: 400), (t) async {
      final controller = _webController;
      if (controller == null || _ready || _failed) {
        t.cancel();
        return;
      }
      try {
        final result = await controller
            .runJavaScriptReturningResult('window.tbReady === true');
        if (result == true || result.toString() == 'true') {
          _markReady();
          t.cancel();
        }
      } catch (_) {
        // 폴링 중 일시 오류는 무시하고 다음 tick 재시도
      }
    });
  }

  void _markReady() {
    _timeout?.cancel();
    if (!mounted) {
      _ready = true;
      return;
    }
    setState(() => _ready = true);
  }

  void _markFailed() {
    _readyPoll?.cancel();
    _timeout?.cancel();
    if (!mounted) {
      _failed = true;
      return;
    }
    setState(() => _failed = true);
  }

  /// 애니메이션 재생 (준비 전/실패 시 no-op).
  void play(String state) {
    final controller = _webController;
    if (controller == null || !_ready || _failed) return;
    final safe = state.replaceAll(RegExp(r'[^A-Za-z_]'), '');
    if (safe.isEmpty) return;
    controller.runJavaScript(
      'window.tbSetAnimation && window.tbSetAnimation("$safe");',
    );
  }

  @override
  void dispose() {
    widget.controller._detach(this);
    _readyPoll?.cancel();
    _timeout?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 로드 실패/타임아웃 → 스테이지 숨김 (텍스트 전투 그대로)
    if (_failed) return const SizedBox.shrink();

    final tint = rankColor(widget.monster.rank);

    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 0.9,
          colors: [tint.withValues(alpha: 0.10), AppColors.background],
        ),
        border: Border(
          bottom: BorderSide(color: tint.withValues(alpha: 0.4)),
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // 유니티 WebView (준비되면 페이드 인)
          if (_webController != null)
            AnimatedOpacity(
              opacity: _ready ? 1 : 0,
              duration: const Duration(milliseconds: 350),
              child: WebViewWidget(controller: _webController!),
            ),

          // 로딩 오버레이 (준비 전)
          if (!_ready)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('👑', style: TextStyle(fontSize: 34, color: tint)),
                  const SizedBox(height: 8),
                  const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ],
              ),
            ),

          // 보스 배너
          Positioned(
            top: 6,
            left: 0,
            right: 0,
            child: Text(
              '👑 ${widget.monster.nameKo}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: tint,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
