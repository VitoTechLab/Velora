import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velora/core/themes/material_theme.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/l10n/app_localizations.dart';

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Velora Web Preview',
      scaffoldMessengerKey: AppMessenger.messengerKey,
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const _WebPreviewScreen(),
    );
  }
}

class _WebPreviewScreen extends StatelessWidget {
  const _WebPreviewScreen();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Stack(
        children: [
          const Positioned.fill(child: _ImpactBackground()),
          SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1180),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 24,
                  ),
                  child: Column(
                    children: [
                      const _WebTopBar(),
                      const SizedBox(height: 28),
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final isWide = constraints.maxWidth >= 920;
                            return isWide
                                ? const Row(
                                    children: [
                                      Expanded(
                                        flex: 11,
                                        child: _ImpactHeroPanel(),
                                      ),
                                      SizedBox(width: 22),
                                      Expanded(
                                        flex: 8,
                                        child: _PreviewFeedPanel(),
                                      ),
                                    ],
                                  )
                                : const SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        _ImpactHeroPanel(),
                                        SizedBox(height: 18),
                                        _PreviewFeedPanel(),
                                      ],
                                    ),
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _WebTopBar extends StatelessWidget {
  const _WebTopBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: colorScheme.primary.withValues(alpha: 0.24),
                blurRadius: 18,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Icon(
            Icons.volunteer_activism_rounded,
            color: colorScheme.onPrimary,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          'Velora',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w900,
          ),
        ),
        const Spacer(),
        _StatusPill(
          icon: Icons.language_rounded,
          label: 'Web UI preview',
          color: colorScheme.tertiary,
        ),
      ],
    );
  }
}

class _ImpactHeroPanel extends StatelessWidget {
  const _ImpactHeroPanel();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return _GlassPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StatusPill(
            icon: Icons.verified_user_outlined,
            label: 'Trust-first social crowdfunding',
            color: colorScheme.primary,
          ),
          const SizedBox(height: 22),
          Text(
            'Build community impact with transparent campaigns.',
            style: theme.textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.w900,
              height: 1.05,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'A web-safe preview route for validating Velora UI/UX before the mobile-native modules are adapted for browser runtime.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.55,
            ),
          ),
          const SizedBox(height: 26),
          const Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _ImpactMetric(value: '24', label: 'campaign updates'),
              _ImpactMetric(value: '86%', label: 'trust completion'),
              _ImpactMetric(value: '12.4M', label: 'funds tracked'),
            ],
          ),
          const SizedBox(height: 26),
          const _TrustTimeline(),
        ],
      ),
    );
  }
}

class _PreviewFeedPanel extends StatelessWidget {
  const _PreviewFeedPanel();

  @override
  Widget build(BuildContext context) {
    return _GlassPanel(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
            child: Text(
              'Impact feed',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _FeedPreviewCard(
                    title: 'Community kitchen verified',
                    body:
                        'Receipts and volunteer photos have been attached for the weekly meal distribution.',
                    progress: 0.72,
                    tag: 'Verified update',
                    icon: Icons.restaurant_outlined,
                  ),
                  _FeedPreviewCard(
                    title: 'School supply campaign',
                    body:
                        'The organizer added a milestone for delivery transparency and donor reporting.',
                    progress: 0.44,
                    tag: 'Campaign',
                    icon: Icons.school_outlined,
                  ),
                  _FeedPreviewCard(
                    title: 'Medical transport support',
                    body:
                        'Supporters can follow every transfer from wallet escrow to campaign owner payout.',
                    progress: 0.88,
                    tag: 'Trust layer',
                    icon: Icons.local_hospital_outlined,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeedPreviewCard extends StatelessWidget {
  const _FeedPreviewCard({
    required this.title,
    required this.body,
    required this.progress,
    required this.tag,
    required this.icon,
  });

  final String title;
  final String body;
  final double progress;
  final String tag;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.82),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: colorScheme.primary.withValues(alpha: 0.12),
                child: Icon(icon, color: colorScheme.primary),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            body,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.45,
            ),
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              backgroundColor: colorScheme.surfaceContainerHighest,
            ),
          ),
          const SizedBox(height: 12),
          _StatusPill(
            icon: Icons.shield_outlined,
            label: tag,
            color: colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}

class _TrustTimeline extends StatelessWidget {
  const _TrustTimeline();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _TimelineRow(
          icon: Icons.edit_document,
          title: 'Campaign story created',
          subtitle: 'AI-assisted draft with organizer context.',
        ),
        _TimelineRow(
          icon: Icons.fact_check_outlined,
          title: 'Evidence attached',
          subtitle: 'Receipts, updates, and community validation.',
        ),
        _TimelineRow(
          icon: Icons.account_balance_wallet_outlined,
          title: 'Wallet transparency',
          subtitle: 'Every donation is visible from pledge to payout.',
        ),
      ],
    );
  }
}

class _TimelineRow extends StatelessWidget {
  const _TimelineRow({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Row(
        children: [
          Icon(icon, color: colorScheme.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ImpactMetric extends StatelessWidget {
  const _ImpactMetric({
    required this.value,
    required this.label,
  });

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colorScheme.primary.withValues(alpha: 0.12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w900,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusPill extends StatelessWidget {
  const _StatusPill({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: color.withValues(alpha: 0.16)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: color,
                  fontWeight: FontWeight.w900,
                ),
          ),
        ],
      ),
    );
  }
}

class _GlassPanel extends StatelessWidget {
  const _GlassPanel({
    required this.child,
    this.padding = const EdgeInsets.all(28),
  });

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.82),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.12)),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.08),
            blurRadius: 34,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _ImpactBackground extends StatelessWidget {
  const _ImpactBackground();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorScheme.primary.withValues(alpha: 0.12),
            colorScheme.surface,
            colorScheme.tertiary.withValues(alpha: 0.10),
          ],
        ),
      ),
    );
  }
}
