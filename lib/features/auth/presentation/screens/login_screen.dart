import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;
import 'dart:ui';

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
            // Beautiful Full Gradient Background
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF1a1a2e), // Deep navy
                    Color(0xFF16213e), // Dark blue
                    Color(0xFF0f3460), // Medium blue
                    Color(0xFF533483), // Purple accent
                  ],
                  stops: [0.0, 0.3, 0.6, 1.0],
                ),
              ),
            ),

            // Mesh Gradient Overlay for depth
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.2,
                  colors: [
                    const Color(0xFF6366F1).withOpacity(0.15),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.bottomLeft,
                  radius: 1.0,
                  colors: [
                    const Color(0xFFA855F7).withOpacity(0.12),
                    Colors.transparent,
                  ],
                ),
              ),
            ),

            // Neon Floating Orbs
            ..._buildNeonFloatingOrbs(size),

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
                          SizedBox(height: size.height * 0.08),

                          // Logo with neon glow
                          _buildLogo(),

                          const SizedBox(height: 32),

                          // Glassmorphism Card
                          _GlassCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title with gradient
                                ShaderMask(
                                  shaderCallback: (bounds) =>
                                      const LinearGradient(
                                    colors: [
                                      Colors.white,
                                      Color(0xFFE0E7FF),
                                    ],
                                  ).createShader(bounds),
                                  child: Text(
                                    t.authWelcomeBackTitle,
                                    style: theme.textTheme.headlineMedium
                                        ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  t.authSignInSubtitle,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: Colors.white.withOpacity(0.7),
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
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                    onPressed: () => obscurePassword.value =
                                        !obscurePassword.value,
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
                                    child: ShaderMask(
                                      shaderCallback: (bounds) =>
                                          const LinearGradient(
                                        colors: [
                                          Color(0xFF818CF8),
                                          Color(0xFFC084FC),
                                        ],
                                      ).createShader(bounds),
                                      child: Text(
                                        t.authForgotPassword,
                                        style:
                                            theme.textTheme.bodySmall?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
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
                                        color: Colors.white.withOpacity(0.15),
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Text(
                                        t.authDividerText,
                                        style:
                                            theme.textTheme.bodySmall?.copyWith(
                                          color: Colors.white.withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.white.withOpacity(0.15),
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
                                  onPressed:
                                      isLoading ? null : signInWithGoogle,
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
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                              TextButton(
                                onPressed: isLoading
                                    ? null
                                    : () =>
                                        context.goNamed(AppRouteName.signUp),
                                child: ShaderMask(
                                  shaderCallback: (bounds) =>
                                      const LinearGradient(
                                    colors: [
                                      Color(0xFF818CF8),
                                      Color(0xFFC084FC),
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
      width: 80,
      height: 80,
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
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          // Neon glow effect
          BoxShadow(
            color: const Color(0xFF6366F1).withOpacity(0.5),
            blurRadius: 30,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: const Color(0xFF8B5CF6).withOpacity(0.3),
            blurRadius: 50,
            spreadRadius: 5,
          ),
        ],
      ),
      child: const Icon(
        Icons.favorite_rounded,
        color: Colors.white,
        size: 40,
      ),
    );
  }

  List<Widget> _buildNeonFloatingOrbs(Size size) {
    return [
      // Top Left - Large Violet Orb
      Positioned(
        top: size.height * 0.05,
        left: -60,
        child: const _NeonFloatingOrb(
          size: 180,
          primaryColor: Color(0xFF6366F1),
          secondaryColor: Color(0xFF8B5CF6),
          duration: Duration(seconds: 6),
          floatDistance: 25,
        ),
      ),
      // Top Right - Medium Pink Orb
      Positioned(
        top: size.height * 0.12,
        right: -40,
        child: const _NeonFloatingOrb(
          size: 120,
          primaryColor: Color(0xFFA855F7),
          secondaryColor: Color(0xFFC084FC),
          duration: Duration(seconds: 5),
          floatDistance: 20,
          initialOffset: 0.3,
        ),
      ),
      // Middle Left - Small Cyan Orb
      Positioned(
        top: size.height * 0.4,
        left: -30,
        child: const _NeonFloatingOrb(
          size: 80,
          primaryColor: Color(0xFF06B6D4),
          secondaryColor: Color(0xFF22D3EE),
          duration: Duration(seconds: 4),
          floatDistance: 15,
          initialOffset: 0.6,
        ),
      ),
      // Bottom Right - Large Rose Orb
      Positioned(
        bottom: size.height * 0.15,
        right: -50,
        child: const _NeonFloatingOrb(
          size: 150,
          primaryColor: Color(0xFFEC4899),
          secondaryColor: Color(0xFFF472B6),
          duration: Duration(seconds: 7),
          floatDistance: 30,
          initialOffset: 0.5,
        ),
      ),
      // Bottom Left - Medium Purple Orb
      Positioned(
        bottom: size.height * 0.08,
        left: size.width * 0.2,
        child: const _NeonFloatingOrb(
          size: 100,
          primaryColor: Color(0xFF8B5CF6),
          secondaryColor: Color(0xFFA78BFA),
          duration: Duration(seconds: 5),
          floatDistance: 18,
          initialOffset: 0.8,
        ),
      ),
      // Center Top - Tiny Accent Orb
      Positioned(
        top: size.height * 0.25,
        right: size.width * 0.15,
        child: const _NeonFloatingOrb(
          size: 50,
          primaryColor: Color(0xFF818CF8),
          secondaryColor: Color(0xFFC4B5FD),
          duration: Duration(seconds: 3),
          floatDistance: 12,
          initialOffset: 0.2,
        ),
      ),
    ];
  }
}

/// Glassmorphism Card Widget with Blur Effect
class _GlassCard extends StatelessWidget {
  final Widget child;

  const _GlassCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(
              color: Colors.white.withOpacity(0.15),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 40,
                offset: const Offset(0, 20),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}

/// Glass Effect Text Field for Dark Theme
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
                color: Colors.white.withOpacity(0.8),
              ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.white.withOpacity(0.12),
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
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontSize: 15,
              ),
              prefixIcon: Icon(
                prefixIcon,
                size: 20,
                color: const Color(0xFF818CF8),
              ),
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              errorStyle: const TextStyle(
                color: Color(0xFFF472B6),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Gradient Button with Neon Glow
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
                      Colors.grey[600]!.withOpacity(0.3),
                      Colors.grey[600]!.withOpacity(0.3),
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
                      color: const Color(0xFF6366F1).withOpacity(0.5),
                      blurRadius: 25,
                      offset: const Offset(0, 8),
                    ),
                    BoxShadow(
                      color: const Color(0xFF8B5CF6).withOpacity(0.3),
                      blurRadius: 40,
                      offset: const Offset(0, 12),
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
                      letterSpacing: 0.5,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

/// Glass Social Button for Dark Theme
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
          backgroundColor: Colors.white.withOpacity(0.08),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: BorderSide(
            color: Colors.white.withOpacity(0.15),
            width: 1,
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation(Color(0xFF818CF8)),
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
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

/// Neon Floating Orb with Glow Effect
class _NeonFloatingOrb extends StatefulWidget {
  final double size;
  final Color primaryColor;
  final Color secondaryColor;
  final Duration duration;
  final double floatDistance;
  final double initialOffset;

  const _NeonFloatingOrb({
    required this.size,
    required this.primaryColor,
    required this.secondaryColor,
    required this.duration,
    this.floatDistance = 20,
    this.initialOffset = 0.0,
  });

  @override
  State<_NeonFloatingOrb> createState() => _NeonFloatingOrbState();
}

class _NeonFloatingOrbState extends State<_NeonFloatingOrb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _floatAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _floatAnimation = Tween<double>(
      begin: 0,
      end: widget.floatDistance,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.08,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Start with initial offset for variety
    _controller.value = widget.initialOffset;
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(
            math.sin(_controller.value * math.pi * 2) *
                (widget.floatDistance * 0.3),
            _floatAnimation.value,
          ),
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              width: widget.size,
              height: widget.size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    widget.primaryColor.withOpacity(0.4),
                    widget.secondaryColor.withOpacity(0.2),
                    widget.primaryColor.withOpacity(0.08),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.3, 0.6, 1.0],
                ),
                boxShadow: [
                  // Inner glow
                  BoxShadow(
                    color: widget.primaryColor.withOpacity(0.4),
                    blurRadius: widget.size * 0.3,
                    spreadRadius: 0,
                  ),
                  // Outer glow
                  BoxShadow(
                    color: widget.secondaryColor.withOpacity(0.2),
                    blurRadius: widget.size * 0.6,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
