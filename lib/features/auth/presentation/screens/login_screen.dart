import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_logo.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../controllers/auth_controller.dart';

enum _AuthMode { signIn, signUp, resetPassword }

/// 게임 타이틀 스크린 — 로고 + GamePanel 안의 로그인/회원가입/비밀번호 재설정 폼.
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  _AuthMode _mode = _AuthMode.signIn;
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final controller = ref.read(authControllerProvider.notifier);
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    switch (_mode) {
      case _AuthMode.signIn:
        await controller.signIn(email: email, password: password);
      case _AuthMode.signUp:
        await controller.signUp(email: email, password: password);
      case _AuthMode.resetPassword:
        await controller.resetPassword(email: email, password: password);
    }
  }

  String get _submitLabel => switch (_mode) {
        _AuthMode.signIn => '모험 시작',
        _AuthMode.signUp => '새 모험가 등록',
        _AuthMode.resetPassword => '비밀번호 재설정',
      };

  String get _panelTitle => switch (_mode) {
        _AuthMode.signIn => '모험가 로그인',
        _AuthMode.signUp => '모험가 등록',
        _AuthMode.resetPassword => '비밀번호 재설정',
      };

  InputDecoration _fieldDecoration({
    required String label,
    required IconData icon,
    Widget? suffixIcon,
  }) {
    OutlineInputBorder border(Color color) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: color),
        );
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: AppColors.textMuted),
      floatingLabelStyle: const TextStyle(color: AppColors.primary),
      prefixIcon: Icon(icon, size: 20, color: AppColors.textFaint),
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: AppColors.backgroundDeep.withValues(alpha: 0.55),
      enabledBorder: border(AppColors.border),
      focusedBorder: border(AppColors.primary),
      errorBorder: border(AppColors.danger.withValues(alpha: 0.7)),
      focusedErrorBorder: border(AppColors.danger),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    );
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authControllerProvider);

    ref.listen(authControllerProvider, (_, next) {
      final error = next.error;
      if (error == null) return;
      // 백필 유저는 비밀번호 재설정 화면으로 유도
      if (error is ApiException && error.isPasswordResetRequired) {
        setState(() => _mode = _AuthMode.resetPassword);
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error.toString())));
    });

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const GameLogo(),
                  const SizedBox(height: 36),
                  GamePanel(
                    tint: AppColors.primary,
                    glow: true,
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SectionLabel(_panelTitle, icon: Icons.shield_moon),
                          const SizedBox(height: 18),
                          if (_mode == _AuthMode.resetPassword)
                            const Padding(
                              padding: EdgeInsets.only(bottom: 14),
                              child: Text(
                                '기존 계정은 새 비밀번호 설정이 필요합니다.',
                                style: TextStyle(
                                    fontSize: 13, color: AppColors.textMuted),
                              ),
                            ),
                          TextFormField(
                            controller: _emailController,
                            style:
                                const TextStyle(color: AppColors.textPrimary),
                            decoration: _fieldDecoration(
                              label: '이메일',
                              icon: Icons.mail_outline,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autofillHints: const [AutofillHints.email],
                            validator: (v) => (v == null || !v.contains('@'))
                                ? '이메일 형식이 아닙니다'
                                : null,
                          ),
                          const SizedBox(height: 14),
                          TextFormField(
                            controller: _passwordController,
                            style:
                                const TextStyle(color: AppColors.textPrimary),
                            decoration: _fieldDecoration(
                              label: _mode == _AuthMode.resetPassword
                                  ? '새 비밀번호'
                                  : '비밀번호',
                              icon: Icons.lock_outline,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  size: 20,
                                  color: AppColors.textFaint,
                                ),
                                onPressed: () => setState(
                                    () => _obscurePassword = !_obscurePassword),
                              ),
                            ),
                            obscureText: _obscurePassword,
                            validator: (v) => (v == null || v.length < 6)
                                ? '6자 이상 입력하세요'
                                : null,
                            onFieldSubmitted: (_) => _submit(),
                          ),
                          const SizedBox(height: 22),
                          _SubmitButton(
                            label: _submitLabel,
                            loading: auth.isLoading,
                            onPressed: _submit,
                          ),
                          const SizedBox(height: 6),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: AppColors.textMuted,
                            ),
                            onPressed: () => setState(() {
                              _mode = _mode == _AuthMode.signIn
                                  ? _AuthMode.signUp
                                  : _AuthMode.signIn;
                            }),
                            child: Text(
                              _mode == _AuthMode.signIn
                                  ? '계정이 없나요? 회원가입'
                                  : '로그인으로 돌아가기',
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    'v0.1.0 · © 2026 Talebound',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      letterSpacing: 0.6,
                      color: AppColors.textFaint,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 앰버→자수정 그라데이션의 큼직한 제출 버튼.
class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    required this.label,
    required this.loading,
    required this.onPressed,
  });

  final String label;
  final bool loading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: loading
              ? [AppColors.surfaceAlt, AppColors.surfaceAlt]
              : const [AppColors.accent, AppColors.primaryDeep],
        ),
        border: Border.all(
          color: loading
              ? AppColors.border
              : AppColors.accentBright.withValues(alpha: 0.55),
        ),
        boxShadow: loading
            ? null
            : [
                BoxShadow(
                  color: AppColors.accent.withValues(alpha: 0.25),
                  blurRadius: 14,
                  spreadRadius: -2,
                  offset: const Offset(0, 3),
                ),
              ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(13),
        child: InkWell(
          borderRadius: BorderRadius.circular(13),
          onTap: loading ? null : onPressed,
          child: Center(
            child: loading
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: AppColors.accent,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.play_arrow_rounded,
                          size: 22, color: Colors.white),
                      const SizedBox(width: 6),
                      Text(
                        label,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
