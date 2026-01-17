import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;
import 'dart:ui';

import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/themes/color_material.dart';
import 'package:velora/core/utils/app_logger.dart';
import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/components/auth_divider.dart';
import 'package:velora/features/auth/presentation/widgets/components/custom_text_field.dart';
import 'package:velora/features/auth/presentation/widgets/components/password_field.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';
import 'package:velora/features/auth/presentation/widgets/components/social_button.dart';
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
                    MaterialColorsCustom.neonIndigo.withValues(alpha: 0.15),
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
                    MaterialColorsCustom.neonMagenta.withValues(alpha: 0.12),
                    Colors.transparent,
                  ],
                ),
              ),
            ),

            // Neon Floating Orbs
            ..._buildNeonFloatingOrbs(size),

            // Floating Particles Effect (Optimized)
            const Positioned.fill(
              child: _FloatingParticles(),
            ),

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
                                    color: Colors.white.withValues(alpha: 0.7),
                                  ),
                                ),

                                const SizedBox(height: 32),

                                // Email Field with normalized component
                                CustomTextField(
                                  controller: emailController,
                                  focusNode: emailFocusNode,
                                  label: t.fieldEmailLabel,
                                  hint: t.fieldEmailHint,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  validator: FieldValidator.email,
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    size: 20,
                                    color: MaterialColorsCustom.neonIndigo,
                                  ),
                                  enabled: !isLoading,
                                ),

                                const SizedBox(height: 16),

                                // Password Field with normalized component
                                PasswordField(
                                  controller: passwordController,
                                  focusNode: passwordFocusNode,
                                  label: t.fieldPasswordLabel,
                                  validator: FieldValidator.password,
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    size: 20,
                                    color: MaterialColorsCustom.neonIndigo,
                                  ),
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
                                          LinearGradient(
                                        colors: [
                                          MaterialColorsCustom.neonIndigo,
                                          MaterialColorsCustom.neonLavender,
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

                                // Sign In Button with normalized component
                                PrimaryButton(
                                  text: t.authSignInButton,
                                  onPressed: isLoading ? null : submitLogin,
                                  isLoading: isEmailLoading,
                                ),

                                // Divider with normalized component
                                AuthDivider(
                                  text: t.authDividerText,
                                ),

                                // Google Sign In with normalized component
                                SocialButton(
                                  brand: 'Google',
                                  iconAsset: 'assets/images/google.png',
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
                                  color: Colors.white.withValues(alpha: 0.7),
                                ),
                              ),
                              TextButton(
                                onPressed: isLoading
                                    ? null
                                    : () =>
                                        context.goNamed(AppRouteName.signUp),
                                child: ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      MaterialColorsCustom.neonIndigo,
                                      MaterialColorsCustom.neonLavender,
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
            color: MaterialColorsCustom.neonIndigo.withValues(alpha: 0.5),
            blurRadius: 30,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: MaterialColorsCustom.neonPurple.withValues(alpha: 0.3),
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
          primaryColor: MaterialColorsCustom.neonIndigo,
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
            color: Colors.white.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.15),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 40,
                offset: const Offset(0, 20),
              ),
              // Subtle inner glow
              BoxShadow(
                color: MaterialColorsCustom.neonIndigo.withValues(alpha: 0.05),
                blurRadius: 20,
                offset: const Offset(0, 10),
                spreadRadius: -5,
              ),
            ],
          ),
          child: child,
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
                    widget.primaryColor.withValues(alpha: 0.4),
                    widget.secondaryColor.withValues(alpha: 0.2),
                    widget.primaryColor.withValues(alpha: 0.08),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.3, 0.6, 1.0],
                ),
                boxShadow: [
                  // Inner glow
                  BoxShadow(
                    color: widget.primaryColor.withValues(alpha: 0.4),
                    blurRadius: widget.size * 0.3,
                    spreadRadius: 0,
                  ),
                  // Outer glow
                  BoxShadow(
                    color: widget.secondaryColor.withValues(alpha: 0.2),
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

/// Floating Particles Effect - Optimized for Performance
class _FloatingParticles extends StatefulWidget {
  const _FloatingParticles();

  @override
  State<_FloatingParticles> createState() => _FloatingParticlesState();
}

class _FloatingParticlesState extends State<_FloatingParticles>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<_Particle> _particles;
  static const int _particleCount = 25; // Optimized count

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();

    // Generate particles with fixed seed for consistency
    final random = math.Random(42);
    _particles = List.generate(_particleCount, (index) {
      return _Particle(
        x: random.nextDouble(),
        y: random.nextDouble(),
        size: 2.0 + random.nextDouble() * 4.0,
        speed: 0.5 + random.nextDouble() * 1.5,
        opacity: 0.2 + random.nextDouble() * 0.4,
        color: _getParticleColor(index),
      );
    });
  }

  Color _getParticleColor(int index) {
    final colors = [
      MaterialColorsCustom.neonIndigo,
      MaterialColorsCustom.neonLavender,
      MaterialColorsCustom.neonPink,
      MaterialColorsCustom.neonTeal,
      MaterialColorsCustom.neonLilac,
    ];
    return colors[index % colors.length];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: _ParticlePainter(
              particles: _particles,
              animationValue: _controller.value,
            ),
            size: Size.infinite,
          );
        },
      ),
    );
  }
}

class _Particle {
  final double x;
  final double y;
  final double size;
  final double speed;
  final double opacity;
  final Color color;

  _Particle({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.opacity,
    required this.color,
  });
}

class _ParticlePainter extends CustomPainter {
  final List<_Particle> particles;
  final double animationValue;

  _ParticlePainter({
    required this.particles,
    required this.animationValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < particles.length; i++) {
      final particle = particles[i];

      // Calculate position with floating animation
      final baseY = particle.y * size.height;
      final offsetY =
          (animationValue * particle.speed * size.height) % size.height;
      final y = (baseY + offsetY) % size.height;

      // Add slight horizontal drift
      final driftX = math.sin(animationValue * math.pi * 2 + i) * 20;
      final x = particle.x * size.width + driftX;

      // Paint particle with glow effect
      final paint = Paint()
        ..color = particle.color.withValues(alpha: particle.opacity)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, particle.size * 0.8);

      canvas.drawCircle(
        Offset(x, y),
        particle.size,
        paint,
      );

      // Add core glow
      final corePaint = Paint()
        ..color = particle.color.withValues(alpha: particle.opacity * 0.6)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, particle.size * 1.5);

      canvas.drawCircle(
        Offset(x, y),
        particle.size * 1.2,
        corePaint,
      );
    }
  }

  @override
  bool shouldRepaint(_ParticlePainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}
