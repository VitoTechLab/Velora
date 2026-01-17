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
    final colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    final t = AppLocalizations.of(context)!;

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();

    // Proper disposal of focus nodes
    useEffect(() {
      return () {
        emailFocusNode.dispose();
        passwordFocusNode.dispose();
      };
    }, []);

    final submitLogin = useCallback(() {
      final bloc = context.read<AuthBloc>();

      // Unfocus untuk tutup keyboard dan prevent keyboard popup bug
      FocusScope.of(context).unfocus();

      // Validasi manual karena CustomTextField sudah handle validator sendiri
      final emailError = FieldValidator.email(emailController.text);
      final passwordError = FieldValidator.password(passwordController.text);

      if (emailError == null && passwordError == null) {
        bloc.add(
          AuthEvent.signIn(
            email: emailController.text.trim(),
            password: passwordController.text,
          ),
        );
      }
    }, [emailController, passwordController]);

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
            // Beautiful Adaptive Gradient Background
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: colorScheme.brightness == Brightness.light
                      ? [
                          // Light mode: Soft pastel gradient
                          const Color(0xFFF8F9FF), // Soft lavender white
                          const Color(0xFFFFF3F8), // Soft pink white
                          const Color(0xFFF5F3FF), // Soft purple white
                          const Color(0xFFFFEFF5), // Soft rose white
                        ]
                      : [
                          // Dark mode: Deep navy gradient
                          MaterialColorsCustom.darkNavy1,
                          MaterialColorsCustom.darkNavy2,
                          MaterialColorsCustom.darkNavy3,
                          MaterialColorsCustom.darkNavy4,
                        ],
                  stops: const [0.0, 0.3, 0.6, 1.0],
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
                    (colorScheme.brightness == Brightness.light
                            ? MaterialColorsCustom.neonIndigo
                            : MaterialColorsCustom.neonIndigo)
                        .withValues(
                            alpha: colorScheme.brightness == Brightness.light
                                ? 0.08
                                : 0.15),
                    colorScheme.surface.withValues(alpha: 0.0),
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
                    (colorScheme.brightness == Brightness.light
                            ? MaterialColorsCustom.neonRose
                            : MaterialColorsCustom.neonMagenta)
                        .withValues(
                            alpha: colorScheme.brightness == Brightness.light
                                ? 0.10
                                : 0.12),
                    colorScheme.surface.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),

            // Adaptive Floating Orbs
            ..._buildNeonFloatingOrbs(size, colorScheme.brightness),

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
                                shaderCallback: (bounds) => LinearGradient(
                                  colors: [
                                    colorScheme.onSurface,
                                    MaterialColorsCustom.neonLilac,
                                  ],
                                ).createShader(bounds),
                                child: Text(
                                  t.authWelcomeBackTitle,
                                  style:
                                      theme.textTheme.headlineMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: colorScheme.onSurface,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 8),

                              Text(
                                t.authSignInSubtitle,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurface
                                      .withValues(alpha: 0.7),
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
                                    shaderCallback: (bounds) => LinearGradient(
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
                                        color: colorScheme.onSurface,
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
                                color: colorScheme.onSurface
                                    .withValues(alpha: 0.7),
                              ),
                            ),
                            TextButton(
                              onPressed: isLoading
                                  ? null
                                  : () => context.goNamed(AppRouteName.signUp),
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
                                    color: colorScheme.onSurface,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 40),
                      ],
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

  List<Widget> _buildNeonFloatingOrbs(Size size, Brightness brightness) {
    final isLight = brightness == Brightness.light;

    return [
      // Top Left - Large Violet/Indigo Orb
      Positioned(
        top: size.height * 0.05,
        left: -60,
        child: _NeonFloatingOrb(
          size: 180,
          primaryColor: isLight
              ? MaterialColorsCustom.neonIndigo.withValues(alpha: 0.6)
              : const Color(0xFF6366F1),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonLavender.withValues(alpha: 0.5)
              : const Color(0xFF8B5CF6),
          duration: const Duration(seconds: 6),
          floatDistance: 25,
        ),
      ),
      // Top Right - Medium Pink/Rose Orb
      Positioned(
        top: size.height * 0.12,
        right: -40,
        child: _NeonFloatingOrb(
          size: 120,
          primaryColor: isLight
              ? MaterialColorsCustom.neonRose.withValues(alpha: 0.6)
              : const Color(0xFFA855F7),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonPink.withValues(alpha: 0.5)
              : const Color(0xFFC084FC),
          duration: const Duration(seconds: 5),
          floatDistance: 20,
          initialOffset: 0.3,
        ),
      ),
      // Middle Left - Small Cyan Orb
      Positioned(
        top: size.height * 0.4,
        left: -30,
        child: _NeonFloatingOrb(
          size: 80,
          primaryColor: isLight
              ? MaterialColorsCustom.neonCyan.withValues(alpha: 0.6)
              : const Color(0xFF06B6D4),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonTeal.withValues(alpha: 0.5)
              : const Color(0xFF22D3EE),
          duration: const Duration(seconds: 4),
          floatDistance: 15,
          initialOffset: 0.6,
        ),
      ),
      // Bottom Right - Large Rose Orb
      Positioned(
        bottom: size.height * 0.15,
        right: -50,
        child: _NeonFloatingOrb(
          size: 150,
          primaryColor: isLight
              ? MaterialColorsCustom.neonLavender.withValues(alpha: 0.6)
              : const Color(0xFFEC4899),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonLilac.withValues(alpha: 0.5)
              : const Color(0xFFF472B6),
          duration: const Duration(seconds: 7),
          floatDistance: 30,
          initialOffset: 0.5,
        ),
      ),
      // Bottom Left - Medium Purple Orb
      Positioned(
        bottom: size.height * 0.08,
        left: size.width * 0.2,
        child: _NeonFloatingOrb(
          size: 100,
          primaryColor: isLight
              ? MaterialColorsCustom.neonPurple.withValues(alpha: 0.6)
              : const Color(0xFF8B5CF6),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonLightPurple.withValues(alpha: 0.5)
              : const Color(0xFFA78BFA),
          duration: const Duration(seconds: 5),
          floatDistance: 18,
          initialOffset: 0.8,
        ),
      ),
      // Center Top - Tiny Accent Orb
      Positioned(
        top: size.height * 0.25,
        right: size.width * 0.15,
        child: _NeonFloatingOrb(
          size: 50,
          primaryColor: isLight
              ? MaterialColorsCustom.neonIndigo.withValues(alpha: 0.6)
              : MaterialColorsCustom.neonIndigo,
          secondaryColor: isLight
              ? MaterialColorsCustom.neonLilac.withValues(alpha: 0.5)
              : const Color(0xFFC4B5FD),
          duration: const Duration(seconds: 3),
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
    final colorScheme = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: colorScheme.onSurface.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(
              color: colorScheme.onSurface.withValues(alpha: 0.15),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow.withValues(alpha: 0.1),
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
                    widget.primaryColor.withValues(alpha: 0.0),
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
