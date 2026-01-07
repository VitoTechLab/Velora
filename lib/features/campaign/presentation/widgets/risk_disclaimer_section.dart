import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RiskDisclaimerSection extends HookWidget {
  final String riskGrade;

  const RiskDisclaimerSection({super.key, required this.riskGrade});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isExpanded = useState(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.warning_amber_outlined,
              color: colorScheme.error,
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              'Risk & Disclaimer',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        Container(
          decoration: BoxDecoration(
            color: colorScheme.errorContainer.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: colorScheme.error.withValues(alpha: 0.3)),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () => isExpanded.value = !isExpanded.value,
                borderRadius: BorderRadius.circular(16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.error,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Risk Grade: $riskGrade',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: colorScheme.onError,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Investment Risk Assessment',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ),
                      Icon(
                        isExpanded.value
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: colorScheme.onSurface,
                      ),
                    ],
                  ),
                ),
              ),

              AnimatedCrossFade(
                duration: const Duration(milliseconds: 300),
                crossFadeState: isExpanded.value
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: const SizedBox.shrink(),
                secondChild: Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: colorScheme.error.withValues(alpha: 0.3)),
                      const SizedBox(height: 12),

                      Text(
                        'Key Risk Factors:',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 12),

                      _RiskBullet(
                        text:
                            'Investment capital is at risk and you may lose some or all of your investment',
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                      _RiskBullet(
                        text:
                            'Returns are not guaranteed and past performance does not indicate future results',
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                      _RiskBullet(
                        text:
                            'Investments may be illiquid and difficult to sell before maturity',
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                      _RiskBullet(
                        text:
                            'Company may fail to achieve projected revenues or milestones',
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                      _RiskBullet(
                        text:
                            'Market conditions and regulatory changes may affect investment value',
                        colorScheme: colorScheme,
                        theme: theme,
                      ),

                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: colorScheme.surface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 16,
                              color: colorScheme.onSurface,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Only invest money you can afford to lose. Seek independent financial advice if you are unsure about the suitability of this investment.',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSurface,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RiskBullet extends StatelessWidget {
  final String text;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _RiskBullet({
    required this.text,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: colorScheme.error,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
