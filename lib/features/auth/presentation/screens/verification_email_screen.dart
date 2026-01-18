import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import 'package:velora/core/themes/color_material.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Email Verification Screen
///
/// UX Goals:
/// - Guide user through verification
/// - Clear next action
/// - Visible resend option
/// - Escape hatch (sign out)
/// - Auto-navigate when verified
class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() =>
      _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
  bool _isCheckingVerification = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        // Auto-navigate when user becomes authenticated
        if (state.status == AuthStatusEntity.authenticated) {
          if (mounted) {
            context.go('/');
          }
        }

        // Show error if verification check fails
        if (state.errorMessage != null && _isCheckingVerification) {
          AppMessenger.showToast(
            message: state.errorMessage!,
            icon: Icons.error_outline,
            isError: true,
          );
          setState(() {
            _isCheckingVerification = false;
          });
        }

        // Still unverified after check
        if (state.status == AuthStatusEntity.emailUnverified &&
            _isCheckingVerification) {
          AppMessenger.showToast(
            message: 'Email not yet verified. Please check your inbox.',
            icon: Icons.info_outline,
            isError: true,
          );
          setState(() {
            _isCheckingVerification = false;
          });
        }
      },
      child: Scaffold(
        backgroundColor: colorScheme.surfaceContainerLowest,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            tooltip: t.commonGoBack,
            icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
            onPressed: () {
              // Sign out before going back to prevent stuck state
              context.read<AuthBloc>().add(const AuthEvent.signOut());
              context.go('/auth/signin');
            },
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final size = Size(constraints.maxWidth, constraints.maxHeight);
            final brightness = colorScheme.brightness;
            final isLight = brightness == Brightness.light;

            return Stack(
              children: [
                // Adaptive Gradient Background
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: isLight
                            ? [
                                // Soft pastel gradients for light mode
                                const Color(0xFFF0FFF4), // Very soft green tint
                                const Color(0xFFF0F9FF), // Very soft blue
                                const Color(0xFFF5F0FF), // Very soft lavender
                              ]
                            : [
                                // Deep navy gradients for dark mode
                                MaterialColorsCustom.darkNavy1,
                                MaterialColorsCustom.darkNavy2,
                                MaterialColorsCustom.darkNavy3,
                                MaterialColorsCustom.darkNavy4,
                              ],
                      ),
                    ),
                  ),
                ),

                // Mesh Gradient Overlays
                Positioned.fill(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topLeft,
                        radius: 1.5,
                        colors: [
                          MaterialColorsCustom.neonTeal.withValues(
                            alpha: isLight ? 0.18 : 0.15,
                          ),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),

                Positioned.fill(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.bottomRight,
                        radius: 1.5,
                        colors: [
                          MaterialColorsCustom.neonLavender.withValues(
                            alpha: isLight ? 0.18 : 0.15,
                          ),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),

                // Floating Orbs (fewer for minimal effect)
                ..._buildFloatingOrbs(size, brightness),

                // Floating Particles
                const Positioned.fill(
                  child: _FloatingParticles(),
                ),

                // Main Content
                SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Semantics(
                      container: true,
                      label: t.authEmailVerificationLabel,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),

                          // Glassmorphism Card wrapping content
                          _GlassCard(
                            child: Column(
                              children: [
                                // Lottie Animation (OK here - waiting state)
                                Semantics(
                                  label: t.authAnimatedEmailLabel,
                                  image: true,
                                  child: ExcludeSemantics(
                                    child: SizedBox(
                                      width: 200,
                                      height: 200,
                                      child: Lottie.asset(
                                        'assets/lottie/email.json',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 32),

                                // Headline
                                Semantics(
                                  header: true,
                                  child: Text(
                                    t.authCheckEmailTitle,
                                    style:
                                        theme.textTheme.headlineLarge?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),

                                const SizedBox(height: 16),

                                // Instructions
                                Semantics(
                                  label: t.authVerificationInstructions,
                                  child: ExcludeSemantics(
                                    child: Text(
                                      t.authVerificationInstructions,
                                      style:
                                          theme.textTheme.bodyMedium?.copyWith(
                                        color: colorScheme.onSurfaceVariant,
                                        height: 1.6,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 40),

                                // Primary CTA: I've Verified
                                BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return PrimaryButton(
                                      text: t.authVerifiedCta,
                                      icon: Icons.check_circle_outline,
                                      onPressed: _isCheckingVerification
                                          ? null
                                          : () {
                                              // Reload current session to check if email is verified
                                              setState(() {
                                                _isCheckingVerification = true;
                                              });

                                              // Sign out and sign in again to refresh session
                                              // This will trigger authSnapshotChanged event
                                              context.read<AuthBloc>().add(
                                                  const AuthEvent.signOut());

                                              // Wait a bit then show message to sign in again
                                              Future.delayed(
                                                  const Duration(
                                                      milliseconds: 500), () {
                                                if (mounted) {
                                                  AppMessenger.showToast(
                                                    message:
                                                        'Please sign in again to check verification status.',
                                                    icon: Icons.info_outline,
                                                  );
                                                  context.go('/auth/signin');
                                                }
                                              });
                                            },
                                      isLoading: _isCheckingVerification,
                                    );
                                  },
                                ),

                                const SizedBox(height: 16),

                                // Secondary CTA: Resend Email
                                Semantics(
                                  button: true,
                                  label: t.authResendVerificationLabel,
                                  child: ExcludeSemantics(
                                    child: TextButton.icon(
                                      onPressed: () {
                                        _showInlineMessage(
                                          context,
                                          t.authVerificationEmailResent,
                                          isError: false,
                                        );
                                      },
                                      icon: Icon(
                                        Icons.refresh,
                                        size: 18,
                                        color: colorScheme.primary,
                                      ),
                                      label: Text(
                                        t.authResendVerificationLabel,
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                          color: colorScheme.primary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ), // End of _GlassCard

                          const SizedBox(height: 32),

                          // Footer: Wrong email? Sign out (outside card)
                          Semantics(
                            button: true,
                            label: t.authWrongEmail,
                            hint: t.authSignOutHint,
                            child: ExcludeSemantics(
                              child: TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthBloc>()
                                      .add(const AuthEvent.signOut());
                                  context.go('/auth/signin');
                                },
                                child: Text(
                                  t.authWrongEmail,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _showInlineMessage(
    BuildContext context,
    String message, {
    required bool isError,
  }) {
    AppMessenger.showToast(
      message: message,
      icon: isError ? Icons.error_outline : Icons.info_outline,
      isError: isError,
      duration: const Duration(seconds: 3),
    );
  }

  List<Widget> _buildFloatingOrbs(Size size, Brightness brightness) {
    final isLight = brightness == Brightness.light;

    return [
      // Top Right - Medium Teal Orb
      Positioned(
        top: size.height * 0.1,
        right: -35,
        child: _NeonFloatingOrb(
          size: 140,
          primaryColor: isLight
              ? MaterialColorsCustom.neonTeal.withValues(alpha: 0.8)
              : const Color(0xFF14B8A6),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonCyan.withValues(alpha: 0.7)
              : const Color(0xFF2DD4BF),
          duration: const Duration(seconds: 6),
          floatDistance: 28,
        ),
      ),
      // Bottom Left - Medium Lavender Orb
      Positioned(
        bottom: size.height * 0.15,
        left: -30,
        child: _NeonFloatingOrb(
          size: 120,
          primaryColor: isLight
              ? MaterialColorsCustom.neonLavender.withValues(alpha: 0.8)
              : const Color(0xFF8B5CF6),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonLilac.withValues(alpha: 0.7)
              : const Color(0xFFA78BFA),
          duration: const Duration(seconds: 5),
          floatDistance: 22,
          initialOffset: 0.5,
        ),
      ),
    ];
  }
}

/// Glassmorphism Card Widget with Blur Effect - Adaptive Light/Dark
class _GlassCard extends StatelessWidget {
  final Widget child;

  const _GlassCard({required this.child});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isLight = colorScheme.brightness == Brightness.light;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            MaterialColorsCustom.neonTeal.withValues(alpha: 0.15),
            MaterialColorsCustom.neonCyan.withValues(alpha: 0.15),
            MaterialColorsCustom.neonLavender.withValues(alpha: 0.12),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: MaterialColorsCustom.neonTeal
                .withValues(alpha: isLight ? 0.25 : 0.4),
            blurRadius: 40,
            spreadRadius: 0,
            offset: const Offset(0, 20),
          ),
          BoxShadow(
            color: MaterialColorsCustom.neonCyan
                .withValues(alpha: isLight ? 0.2 : 0.3),
            blurRadius: 60,
            spreadRadius: -10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: isLight
                    ? [
                        Colors.white.withValues(alpha: 0.95),
                        Colors.white.withValues(alpha: 0.90),
                        const Color(0xFFFDFDFD).withValues(alpha: 0.92),
                      ]
                    : [
                        colorScheme.surface.withValues(alpha: 0.8),
                        colorScheme.surface.withValues(alpha: 0.7),
                        colorScheme.surfaceContainerHighest
                            .withValues(alpha: 0.75),
                      ],
              ),
              borderRadius: BorderRadius.circular(32),
              border: Border.all(
                color: isLight
                    ? Colors.white.withValues(alpha: 0.9)
                    : colorScheme.onSurface.withValues(alpha: 0.15),
                width: 2,
              ),
            ),
            child: child,
          ),
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
      MaterialColorsCustom.neonTeal,
      MaterialColorsCustom.neonCyan,
      MaterialColorsCustom.neonLavender,
      MaterialColorsCustom.neonLilac,
      MaterialColorsCustom.neonIndigo,
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
