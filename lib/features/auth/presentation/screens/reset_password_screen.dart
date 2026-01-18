import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import 'package:velora/core/themes/color_material.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';
import 'package:velora/features/auth/presentation/widgets/components/custom_text_field.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Reset Password Screen
///
/// UX Goals:
/// - Clear instructions
/// - Single field focus
/// - Success confirmation before navigation
/// - Always-visible back button
class ResetPasswordScreen extends HookWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    final emailController = useTextEditingController();
    final emailFocusNode = useFocusNode();

    // Proper FocusNode disposal
    useEffect(() {
      return () {
        emailFocusNode.dispose();
      };
    }, [emailFocusNode]);

    final submitResetPassword = useCallback(() {
      // Manual validation
      final emailError = FieldValidator.email(emailController.text);
      if (emailError != null) {
        AppMessenger.showToast(
          message: emailError,
          icon: Icons.error_outline,
          isError: true,
          duration: const Duration(seconds: 3),
        );
        return;
      }

      context.read<AuthBloc>().add(
            AuthEvent.resetPassword(email: emailController.text.trim()),
          );
    }, [emailController]);

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.errorMessage != current.errorMessage,
      listener: (context, state) {
        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          _showInlineMessage(context, state.errorMessage!, isError: true);
        } else if (state.message != null && state.message!.isNotEmpty) {
          _showSuccessDialog(context, state.message!);
        }

        context.read<AuthBloc>().clearMessages();
      },
      child: Scaffold(
        backgroundColor: colorScheme.surfaceContainerLowest,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            tooltip: t.commonGoBack,
            icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
            onPressed: () => context.pop(),
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
                                const Color(0xFFF0F4FF), // Very soft blue
                                const Color(0xFFFCF0FF), // Very soft pink
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

                // Mesh Gradient Overlays with subtle movement
                Positioned.fill(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topRight,
                        radius: 1.5,
                        colors: [
                          MaterialColorsCustom.neonIndigo.withValues(
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
                        center: Alignment.bottomLeft,
                        radius: 1.5,
                        colors: [
                          MaterialColorsCustom.neonPurple.withValues(
                            alpha: isLight ? 0.18 : 0.15,
                          ),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),

                // Floating Orbs
                ..._buildFloatingOrbs(size, brightness),

                // Floating Particles
                const Positioned.fill(
                  child: _FloatingParticles(),
                ),

                // Main Content
                SafeArea(
                  child: BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      final isLoading = state.isLoading;

                      return SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Semantics(
                          container: true,
                          label: t.authResetPasswordFormLabel,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 40),

                              // Glassmorphism Card wrapping the content
                              _GlassCard(
                                child: Column(
                                  children: [
                                    // Icon with Neon Glow
                                    Semantics(
                                      label: t.authEmailIllustrationLabel,
                                      image: true,
                                      child: ExcludeSemantics(
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                MaterialColorsCustom.neonCyan,
                                                MaterialColorsCustom.neonTeal,
                                              ],
                                            ),
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: MaterialColorsCustom
                                                    .neonCyan
                                                    .withValues(alpha: 0.5),
                                                blurRadius: 30,
                                                spreadRadius: 2,
                                              ),
                                              BoxShadow(
                                                color: MaterialColorsCustom
                                                    .neonTeal
                                                    .withValues(alpha: 0.3),
                                                blurRadius: 50,
                                                spreadRadius: 5,
                                              ),
                                            ],
                                          ),
                                          child: const Icon(
                                            Icons.email_outlined,
                                            color: Colors.white,
                                            size: 48,
                                          ),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 32),

                                    // Headline
                                    Semantics(
                                      header: true,
                                      child: Text(
                                        t.authResetPasswordTitle,
                                        style: theme.textTheme.headlineLarge
                                            ?.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),

                                    const SizedBox(height: 16),

                                    // Instructions
                                    Semantics(
                                      label: t.authResetPasswordSubtitle,
                                      child: ExcludeSemantics(
                                        child: Text(
                                          t.authResetPasswordSubtitle,
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: colorScheme.onSurfaceVariant,
                                            height: 1.6,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 40),

                                    // Email Field
                                    CustomTextField(
                                      controller: emailController,
                                      focusNode: emailFocusNode,
                                      label: t.fieldEmailLabel,
                                      hint: t.fieldEmailHint,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
                                      validator: FieldValidator.email,
                                      prefixIcon: const Icon(
                                          Icons.email_outlined,
                                          size: 20),
                                      enabled: !isLoading,
                                      onEditingComplete: submitResetPassword,
                                    ),

                                    const SizedBox(height: 32),

                                    // Primary CTA
                                    PrimaryButton(
                                      text: t.authSendResetLink,
                                      onPressed: submitResetPassword,
                                      isLoading: isLoading,
                                    ),
                                  ],
                                ),
                              ), // End of _GlassCard

                              const SizedBox(height: 24),

                              // Footer: Back to Sign In (outside card)
                              Semantics(
                                button: true,
                                label: t.authRememberPasswordLabel,
                                child: ExcludeSemantics(
                                  child: TextButton(
                                    onPressed: isLoading
                                        ? null
                                        : () => context.go('/auth/signin'),
                                    child: Text(
                                      t.authRememberPasswordAction,
                                      style:
                                          theme.textTheme.bodyMedium?.copyWith(
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
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context, String message) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => Semantics(
        label: t.authResetEmailSentLabel,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.all(24),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: colorScheme.tertiary.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: colorScheme.tertiary,
                  size: 36,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                t.authCheckEmailTitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                message,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                    context.go('/auth/signin');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(t.authBackToSignIn),
                ),
              ),
            ],
          ),
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
      icon: isError ? Icons.error_outline : Icons.check_circle_outline,
      isError: isError,
      duration: const Duration(seconds: 3),
    );
  }

  List<Widget> _buildFloatingOrbs(Size size, Brightness brightness) {
    final isLight = brightness == Brightness.light;

    return [
      // Top Left - Large Cyan Orb
      Positioned(
        top: size.height * 0.08,
        left: -50,
        child: _NeonFloatingOrb(
          size: 180,
          primaryColor: isLight
              ? MaterialColorsCustom.neonCyan.withValues(alpha: 0.8)
              : const Color(0xFF06B6D4),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonTeal.withValues(alpha: 0.7)
              : const Color(0xFF22D3EE),
          duration: const Duration(seconds: 6),
          floatDistance: 30,
        ),
      ),
      // Top Right - Medium Indigo Orb
      Positioned(
        top: size.height * 0.15,
        right: -40,
        child: _NeonFloatingOrb(
          size: 130,
          primaryColor: isLight
              ? MaterialColorsCustom.neonIndigo.withValues(alpha: 0.8)
              : const Color(0xFF6366F1),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonLavender.withValues(alpha: 0.7)
              : const Color(0xFF8B5CF6),
          duration: const Duration(seconds: 5),
          floatDistance: 25,
          initialOffset: 0.3,
        ),
      ),
      // Bottom Right - Large Teal Orb
      Positioned(
        bottom: size.height * 0.12,
        right: -45,
        child: _NeonFloatingOrb(
          size: 170,
          primaryColor: isLight
              ? MaterialColorsCustom.neonTeal.withValues(alpha: 0.8)
              : const Color(0xFF14B8A6),
          secondaryColor: isLight
              ? MaterialColorsCustom.neonCyan.withValues(alpha: 0.7)
              : const Color(0xFF2DD4BF),
          duration: const Duration(seconds: 7),
          floatDistance: 35,
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
            MaterialColorsCustom.neonCyan.withValues(alpha: 0.15),
            MaterialColorsCustom.neonIndigo.withValues(alpha: 0.15),
            MaterialColorsCustom.neonTeal.withValues(alpha: 0.12),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: MaterialColorsCustom.neonCyan
                .withValues(alpha: isLight ? 0.25 : 0.4),
            blurRadius: 40,
            spreadRadius: 0,
            offset: const Offset(0, 20),
          ),
          BoxShadow(
            color: MaterialColorsCustom.neonIndigo
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
      MaterialColorsCustom.neonCyan,
      MaterialColorsCustom.neonTeal,
      MaterialColorsCustom.neonIndigo,
      MaterialColorsCustom.neonLavender,
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
