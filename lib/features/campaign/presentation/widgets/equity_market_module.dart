import 'package:flutter/material.dart';

class EquityMarketModule extends StatelessWidget {
  final double unitPrice;
  final int minBuyUnits;
  final String riskGrade;
  final int investorsCount;
  final double? equityChangePct;
  final VoidCallback onInvestTap;

  const EquityMarketModule({
    super.key,
    required this.unitPrice,
    required this.minBuyUnits,
    required this.riskGrade,
    required this.investorsCount,
    this.equityChangePct,
    required this.onInvestTap,
  });

  String _formatCurrency(double amount) {
    if (amount >= 1000000) {
      return '${(amount / 1000000).toStringAsFixed(1)}M';
    } else if (amount >= 1000) {
      return '${(amount / 1000).toStringAsFixed(0)}K';
    }
    return amount.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.primaryContainer.withValues(alpha: 0.3),
            colorScheme.secondaryContainer.withValues(alpha: 0.2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: colorScheme.primary.withValues(alpha: 0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.primary.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.trending_up,
                      color: colorScheme.primary,
                      size: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Investment Opportunity',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Market Info Grid
                Row(
                  children: [
                    Expanded(
                      child: _InfoCard(
                        label: 'Unit Price',
                        value: 'Rp ${_formatCurrency(unitPrice)}',
                        icon: Icons.payments_outlined,
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _InfoCard(
                        label: 'Min. Buy',
                        value: '$minBuyUnits units',
                        icon: Icons.shopping_cart_outlined,
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _InfoCard(
                        label: 'Risk Grade',
                        value: riskGrade,
                        icon: Icons.shield_outlined,
                        colorScheme: colorScheme,
                        theme: theme,
                        isWarning: true,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _InfoCard(
                        label: 'Investors',
                        value: '$investorsCount',
                        icon: Icons.people_outline,
                        colorScheme: colorScheme,
                        theme: theme,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Mini Chart Placeholder
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHigh,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CustomPaint(
                    painter: _SparklinePainter(
                      color: equityChangePct != null && equityChangePct! > 0
                          ? Colors.green
                          : Colors.red,
                    ),
                    child: Container(),
                  ),
                ),
                if (equityChangePct != null) ...[
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        equityChangePct! > 0
                            ? Icons.arrow_upward
                            : Icons.arrow_downward,
                        size: 16,
                        color: equityChangePct! > 0 ? Colors.green : Colors.red,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${equityChangePct! > 0 ? '+' : ''}${equityChangePct!.toStringAsFixed(1)}% this month',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: equityChangePct! > 0
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),

          // Invest Button
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onInvestTap,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: colorScheme.onPrimary,
                        size: 24,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Invest Now',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onPrimary,
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

class _InfoCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final ColorScheme colorScheme;
  final ThemeData theme;
  final bool isWarning;

  const _InfoCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.colorScheme,
    required this.theme,
    this.isWarning = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isWarning
              ? colorScheme.error.withValues(alpha: 0.3)
              : colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 16,
                color: isWarning ? colorScheme.error : colorScheme.primary,
              ),
              const SizedBox(width: 4),
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: isWarning ? colorScheme.error : colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}

class _SparklinePainter extends CustomPainter {
  final Color color;

  _SparklinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withValues(alpha: 0.3)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final path = Path();

    // Mock data points for sparkline
    final points = [0.5, 0.4, 0.6, 0.3, 0.7, 0.5, 0.8, 0.6, 0.9, 0.7];

    path.moveTo(0, size.height * points[0]);

    for (var i = 1; i < points.length; i++) {
      final x = size.width * (i / (points.length - 1));
      final y = size.height * points[i];
      path.lineTo(x, y);
    }

    canvas.drawPath(path, paint);

    // Draw filled area
    final fillPath = Path.from(path);
    fillPath.lineTo(size.width, size.height);
    fillPath.lineTo(0, size.height);
    fillPath.close();

    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.1)
      ..style = PaintingStyle.fill;

    canvas.drawPath(fillPath, fillPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
