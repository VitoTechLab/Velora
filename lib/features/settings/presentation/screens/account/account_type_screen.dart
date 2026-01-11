import 'package:flutter/material.dart';
import 'package:velora/core/ui/app_bottom_sheet.dart';
import 'package:velora/l10n/app_localizations.dart';

class AccountTypeScreen extends StatelessWidget {
  const AccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.accountTypeScreenTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Current Account Type Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.primary.withValues(alpha: 0.15),
                      colorScheme.secondary.withValues(alpha: 0.08),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: colorScheme.primary.withValues(alpha: 0.3),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: colorScheme.primary,
                          size: 32,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          t.accountTypeScreenCurrentType,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      t.accountTypeScreenPersonal,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      t.accountTypeScreenPersonalDescription,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Personal Account Benefits
              Text(
                t.accountTypeScreenPersonalBenefitsTitle,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              _BenefitTile(
                icon: Icons.person,
                title: t.accountTypeScreenBenefit1Title,
                subtitle: t.accountTypeScreenBenefit1Subtitle,
                colorScheme: colorScheme,
                theme: theme,
              ),
              _BenefitTile(
                icon: Icons.lock,
                title: t.accountTypeScreenBenefit2Title,
                subtitle: t.accountTypeScreenBenefit2Subtitle,
                colorScheme: colorScheme,
                theme: theme,
              ),
              _BenefitTile(
                icon: Icons.connect_without_contact,
                title: t.accountTypeScreenBenefit3Title,
                subtitle: t.accountTypeScreenBenefit3Subtitle,
                colorScheme: colorScheme,
                theme: theme,
              ),
              const SizedBox(height: 32),

              // Upgrade to Organization Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.business,
                          color: colorScheme.secondary,
                          size: 28,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          t.accountTypeScreenOrganization,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      t.accountTypeScreenOrganizationDescription,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      t.accountTypeScreenOrganizationBenefitsTitle,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    _CompactBenefitItem(
                      icon: Icons.verified,
                      text: t.accountTypeScreenOrgBenefit1,
                      colorScheme: colorScheme,
                      theme: theme,
                    ),
                    _CompactBenefitItem(
                      icon: Icons.analytics,
                      text: t.accountTypeScreenOrgBenefit2,
                      colorScheme: colorScheme,
                      theme: theme,
                    ),
                    _CompactBenefitItem(
                      icon: Icons.campaign,
                      text: t.accountTypeScreenOrgBenefit3,
                      colorScheme: colorScheme,
                      theme: theme,
                    ),
                    _CompactBenefitItem(
                      icon: Icons.group,
                      text: t.accountTypeScreenOrgBenefit4,
                      colorScheme: colorScheme,
                      theme: theme,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: () {
                          _showVerificationBottomSheet(context, theme, t);
                        },
                        icon: const Icon(Icons.upgrade),
                        label: Text(t.accountTypeScreenUpgradeButton),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showVerificationBottomSheet(
    BuildContext context,
    ThemeData theme,
    AppLocalizations t,
  ) {
    AppBottomSheet.showFixed(
      heightFactor: 0.5,
      isDismissible: true,
      enableDrag: false,
      showCloseButton: true,
      title: t.accountTypeScreenVerificationTitle,
      child: _VerificationContent(theme: theme, t: t),
    );
  }
}

class _BenefitTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _BenefitTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: colorScheme.primary, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
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

class _CompactBenefitItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _CompactBenefitItem({
    required this.icon,
    required this.text,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: colorScheme.secondary, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class _VerificationContent extends StatefulWidget {
  final ThemeData theme;
  final AppLocalizations t;

  const _VerificationContent({
    required this.theme,
    required this.t,
  });

  @override
  State<_VerificationContent> createState() => _VerificationContentState();
}

class _VerificationContentState extends State<_VerificationContent> {
  bool _idCardCaptured = false;
  bool _selfieCaptured = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = widget.theme.colorScheme;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.t.accountTypeScreenVerificationSubtitle,
            style: widget.theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),

          // ID Card Capture
          _VerificationStep(
            icon: Icons.credit_card,
            title: widget.t.accountTypeScreenVerificationStep1,
            subtitle: widget.t.accountTypeScreenVerificationStep1Subtitle,
            isCompleted: _idCardCaptured,
            onTap: () {
              setState(() {
                _idCardCaptured = true;
              });
              // Note: Camera capture for ID card will be implemented when verification feature is ready
            },
            theme: widget.theme,
            colorScheme: colorScheme,
          ),
          const SizedBox(height: 16),

          // Selfie Capture
          _VerificationStep(
            icon: Icons.face,
            title: widget.t.accountTypeScreenVerificationStep2,
            subtitle: widget.t.accountTypeScreenVerificationStep2Subtitle,
            isCompleted: _selfieCaptured,
            onTap: () {
              setState(() {
                _selfieCaptured = true;
              });
              // Note: Camera capture for selfie will be implemented when verification feature is ready
            },
            theme: widget.theme,
            colorScheme: colorScheme,
          ),
          const SizedBox(height: 24),

          // Submit Button
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _idCardCaptured && _selfieCaptured
                  ? () {
                      // Note: Submission logic will be implemented when verification API is ready
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            widget.t.accountTypeScreenVerificationSuccess,
                          ),
                        ),
                      );
                    }
                  : null,
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(widget.t.accountTypeScreenVerificationSubmit),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(widget.t.accountTypeScreenVerificationCancel),
            ),
          ),
        ],
      ),
    );
  }
}

class _VerificationStep extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isCompleted;
  final VoidCallback onTap;
  final ThemeData theme;
  final ColorScheme colorScheme;

  const _VerificationStep({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isCompleted,
    required this.onTap,
    required this.theme,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isCompleted ? null : onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isCompleted
                ? colorScheme.primary
                : colorScheme.outline.withValues(alpha: 0.5),
            width: isCompleted ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(16),
          color: isCompleted
              ? colorScheme.primaryContainer.withValues(alpha: 0.3)
              : null,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isCompleted
                    ? colorScheme.primary
                    : colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                isCompleted ? Icons.check : icon,
                color: isCompleted
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isCompleted ? colorScheme.primary : null,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              isCompleted ? Icons.check_circle : Icons.camera_alt,
              color: isCompleted ? colorScheme.primary : colorScheme.outline,
            ),
          ],
        ),
      ),
    );
  }
}
