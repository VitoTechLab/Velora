import 'package:flutter/material.dart';

import 'package:velora/features/auth/presentation/widgets/atoms/auth_animated_background.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_brand_mark.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_impact_halo.dart';
import 'package:velora/l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.96, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOutCubic),
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AuthAnimatedBackground()),
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Semantics(
                  container: true,
                  label: t.appTitle,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.scale(
                        scale: MediaQuery.disableAnimationsOf(context)
                            ? 1
                            : _scaleAnimation.value,
                        child: const AuthImpactHalo(
                          size: 168,
                          child: AuthBrandMark(
                            size: 116,
                            borderRadius: 30,
                            iconSize: 54,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Opacity(
                        opacity: MediaQuery.disableAnimationsOf(context)
                            ? 1
                            : _fadeAnimation.value,
                        child: Column(
                          children: [
                            Text(
                              t.appTitle,
                              style: theme.textTheme.headlineMedium?.copyWith(
                                color: colorScheme.onSurface,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              t.authSplashTagline,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Opacity(
                        opacity: MediaQuery.disableAnimationsOf(context)
                            ? 1
                            : _fadeAnimation.value,
                        child: SizedBox(
                          width: 34,
                          height: 34,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
