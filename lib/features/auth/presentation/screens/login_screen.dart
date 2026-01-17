import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;

import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/app_logger.dart';
import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

/// Login Screen with Modern Design
class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final t = AppLocalizations.of(context)!;

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final obscurePassword = useState(true);

    final submitLogin = useCallback(() {
      final bloc = context.read<AuthBloc>();
      FocusScope.of(context).unfocus();

      Future.microtask(() {
        if (formKey.currentState?.validate() ?? false) {
          bloc.add(
            AuthEvent.signIn(
              email: emailController.text.trim(),
              password: passwordController.text,
            ),
          );
        }
      });
    }, [emailController, passwordController, formKey]);

    final signInWithGoogle = useCallback(() {
      AppLogger.i("[ModernLogin] Google sign-in tapped");
      context.read<AuthBloc>().add(const AuthEvent.signInWithGoogle());
    }, [context]);

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.errorMessage != current.errorMessage,
      listener: (context, state) {
        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          AppMessenger.showToast(
            message: state.errorMessage!,
            icon: Icons.error_outline,
            isError: true,
          );
        } else if (state.message != null && state.message!.isNotEmpty) {
          AppMessenger.showToast(
            message: state.message!,
            icon: Icons.check_circle_outline,
            isError: false,
          );
        }
        context.read<AuthBloc>().clearMessages();
      },
      child: Scaffold(
        body: Stack(
          children: [
            // Gradient Background
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF8F9FF), // Very light purple
                    Color(0xFFFFFFFF), // White
                    Color(0xFFF3F0FF), // Light purple
                  ],
                ),
              ),
            ),

            // Animated Wave Effect at Top
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: _AnimatedWaveHeader(),
            ),

            // Floating Decorative Circles
            ..._buildFloatingCircles(size),

            // Main Content
            SafeArea(
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  final isLoading = state.isLoading;
                  final isEmailLoading = state.isEmailLoading;
                  final isGoogleLoading = state.isGoogleLoading;

                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const SizedBox(height: 120),

                          // Logo with gradient
                          _buildLogo(),

                          const SizedBox(height: 40),

                          // Glassmorphism Card
                          _GlassCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title
                                Text(
                                  t.authWelcomeBackTitle,
                                  style: theme.textTheme.headlineMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    background: Paint()
                                      ..shader = const LinearGradient(
                                        colors: [
                                          Color(0xFF6366F1),
                                          Color(0xFF8B5CF6),
                                        ],
                                      ).createShader(
                                        const Rect.fromLTWH(0, 0, 200, 70),
                                      ),
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  t.authSignInSubtitle,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey[600],
                                  ),
                                ),

                                const SizedBox(height: 32),

                                // Email Field with Glass Effect
                                _GlassTextField(
                                  controller: emailController,
                                  focusNode: emailFocusNode,
                                  label: t.fieldEmailLabel,
                                  hint: t.fieldEmailHint,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  validator: FieldValidator.email,
                                  prefixIcon: Icons.email_outlined,
                                  enabled: !isLoading,
                                ),

                                const SizedBox(height: 16),

                                // Password Field with Glass Effect
                                _GlassTextField(
                                  controller: passwordController,
                                  focusNode: passwordFocusNode,
                                  label: t.fieldPasswordLabel,
                                  hint: '••••••••',
                                  obscureText: obscurePassword.value,
                                  textInputAction: TextInputAction.done,
                                  validator: FieldValidator.password,
                                  prefixIcon: Icons.lock_outline,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      obscurePassword.value
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 20,
                                    ),
                                    onPressed: () =>
                                        obscurePassword.value = !obscurePassword.value,
                                  ),
                                  enabled: !isLoading,
                                  onEditingComplete: submitLogin,
                                ),

                                // Forgot Password
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: isLoading
                                        ? null
                                        : () => context.pushNamed(
                                              AppRouteName.resetPassword,
                                            ),
                                    child: Text(
                                      t.authForgotPassword,
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFF6366F1),
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 24),

                                // Sign In Button with Gradient
                                _GradientButton(
                                  text: t.authSignInButton,
                                  onPressed: isLoading ? null : submitLogin,
                                  isLoading: isEmailLoading,
                                ),

                                const SizedBox(height: 24),

                                // Divider
                                Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: Colors.grey[300],
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Text(
                                        t.authDividerText,
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.grey[300],
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 24),

                                // Google Sign In with Glass Effect
                                _GlassSocialButton(
                                  icon: 'assets/images/google.png',
                                  label: 'Continue with Google',
                                  onPressed: isLoading ? null : signInWithGoogle,
                                  isLoading: isGoogleLoading,
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 24),

                          // Sign Up Link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                t.authNoAccount,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.grey[600],
                                ),
                              ),
                              TextButton(
                                onPressed: isLoading
                                    ? null
                                    : () => context.goNamed(AppRouteName.signUp),
                                child: ShaderMask(
                                  shaderCallback: (bounds) =>
                                      const LinearGradient(
                                    colors: [
                                      Color(0xFF6366F1),
                                      Color(0xFF8B5CF6),
                                    ],
                                  ).createShader(bounds),
                                  child: Text(
                                    t.authSignUpLink,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF6366F1),
            Color(0xFF8B5CF6),
            Color(0xFFA855F7),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6366F1).withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Icon(
        Icons.favorite_rounded,
        color: Colors.white,
        size: 36,
      ),
    );
  }

  List<Widget> _buildFloatingCircles(Size size) {
    return [
      // Top Left Circle
      Positioned(
        top: size.height * 0.1,
        left: -50,
        child: const _FloatingCircle(
          size: 150,
          color: Color(0xFF6366F1),
          duration: Duration(seconds: 4),
        ),
      ),
      // Top Right Circle
      Positioned(
        top: size.height * 0.15,
        right: -30,
        child: const _FloatingCircle(
          size: 100,
          color: Color(0xFF8B5CF6),
          duration: Duration(seconds: 5),
        ),
      ),
      // Bottom Left Circle
      Positioned(
        bottom: size.height * 0.2,
        left: -40,
        child: const _FloatingCircle(
          size: 120,
          color: Color(0xFFA855F7),
          duration: Duration(seconds: 6),
        ),
      ),
    ];
  }
}

/// Glassmorphism Card Widget
class _GlassCard extends StatelessWidget {
  final Widget child;

  const _GlassCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: Colors.white.withOpacity(0.8),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6366F1).withOpacity(0.1),
            blurRadius: 40,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: child,
    );
  }
}

/// Glass Effect Text Field
class _GlassTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String label;
  final String hint;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool enabled;
  final VoidCallback? onEditingComplete;

  const _GlassTextField({
    required this.controller,
    this.focusNode,
    required this.label,
    required this.hint,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.white.withOpacity(0.8),
              width: 1,
            ),
          ),
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            validator: validator,
            obscureText: obscureText,
            enabled: enabled,
            onEditingComplete: onEditingComplete,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 15,
              ),
              prefixIcon: Icon(
                prefixIcon,
                size: 20,
                color: const Color(0xFF6366F1),
              ),
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Gradient Button
class _GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;

  const _GradientButton({
    required this.text,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: onPressed == null
                ? LinearGradient(
                    colors: [
                      Colors.grey[300]!,
                      Colors.grey[300]!,
                    ],
                  )
                : const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF6366F1),
                      Color(0xFF8B5CF6),
                      Color(0xFFA855F7),
                    ],
                  ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: onPressed != null
                ? [
                    BoxShadow(
                      color: const Color(0xFF6366F1).withOpacity(0.4),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ]
                : null,
          ),
          child: Container(
            alignment: Alignment.center,
            child: isLoading
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  )
                : Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

/// Glass Social Button
class _GlassSocialButton extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  const _GlassSocialButton({
    required this.icon,
    required this.label,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation(Color(0xFF6366F1)),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    icon,
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

/// Floating Circle Animation
class _FloatingCircle extends StatefulWidget {
  final double size;
  final Color color;
  final Duration duration;

  const _FloatingCircle({
    required this.size,
    required this.color,
    required this.duration,
  });

  @override
  State<_FloatingCircle> createState() => _FloatingCircleState();
}

class _FloatingCircleState extends State<_FloatingCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 30).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  widget.color.withOpacity(0.15),
                  widget.color.withOpacity(0.05),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Animated Wave Header
class _AnimatedWaveHeader extends StatefulWidget {
  const _AnimatedWaveHeader();

  @override
  State<_AnimatedWaveHeader> createState() => _AnimatedWaveHeaderState();
}

class _AnimatedWaveHeaderState extends State<_AnimatedWaveHeader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: _WavePainter(
              animation: _controller.value,
            ),
            size: Size(MediaQuery.of(context).size.width, 200),
          );
        },
      ),
    );
  }
}

class _WavePainter extends CustomPainter {
  final double animation;

  _WavePainter({required this.animation});

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF6366F1),
          Color(0xFF8B5CF6),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    final paint2 = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFF8B5CF6).withOpacity(0.5),
          const Color(0xFFA855F7).withOpacity(0.5),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    _drawWave(canvas, size, paint1, animation, 0);
    _drawWave(canvas, size, paint2, animation, math.pi);
  }

  void _drawWave(
    Canvas canvas,
    Size size,
    Paint paint,
    double animation,
    double offset,
  ) {
    final path = Path();
    final waveHeight = size.height * 0.2;
    final waveLength = size.width;

    path.moveTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final double y = size.height / 2 +
          math.sin((i / waveLength * 2 * math.pi) +
                  (animation * 2 * math.pi) +
                  offset) *
              waveHeight;
      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_WavePainter oldDelegate) => true;
}
