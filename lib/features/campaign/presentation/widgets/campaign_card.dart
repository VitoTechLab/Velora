import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/campaign_model.dart';
import '../../domain/entities/campaign_type.dart';

String formatCurrency(double amount) =>
    NumberFormat.decimalPattern('id_ID').format(amount);

/// A shared story-first card. Compact previews retain the funding goal and owner.
class CampaignCard extends StatelessWidget {
  final CampaignModel campaign;
  final VoidCallback? onTap;
  final bool compact;
  const CampaignCard({
    super.key,
    required this.campaign,
    this.onTap,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final id = Localizations.localeOf(context).languageCode == 'id';
    final progress = campaign.target > 0
        ? (campaign.raised / campaign.target).clamp(0.0, 1.0)
        : 0.0;
    final metadata = theme.textTheme.bodySmall?.copyWith(
      color: colors.onSurfaceVariant,
    );
    Widget visual() => ClipRRect(
      borderRadius: BorderRadius.circular(compact ? 8 : 12),
      child: AspectRatio(
        aspectRatio: compact ? 1 : 16 / 9,
        child: ColoredBox(
          color: colors.surfaceContainerLow,
          child: campaign.imageUrl?.isNotEmpty == true
              ? CachedNetworkImage(
                  imageUrl: campaign.imageUrl!,
                  fit: BoxFit.cover,
                  placeholder: (_, _) => const SizedBox.expand(),
                  errorWidget: (_, _, _) => Icon(
                    Icons.image_outlined,
                    color: colors.onSurfaceVariant,
                  ),
                )
              : Icon(Icons.image_outlined, color: colors.onSurfaceVariant),
        ),
      ),
    );
    final details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          campaign.category,
          style: metadata,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Text(
          campaign.title,
          maxLines: compact ? 2 : 3,
          overflow: TextOverflow.ellipsis,
          style:
              (compact
                      ? theme.textTheme.titleMedium
                      : theme.textTheme.titleLarge)
                  ?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Flexible(
              child: Text(
                campaign.creatorName,
                style: metadata,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (campaign.isVerified) ...[
              const SizedBox(width: 4),
              Icon(Icons.verified, size: 14, color: colors.primary),
            ],
          ],
        ),
        const SizedBox(height: 12),
        Semantics(
          label: id ? 'Progres pendanaan' : 'Funding progress',
          value: '${(progress * 100).round()}%',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(value: progress, minHeight: 6),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Rp ${formatCurrency(campaign.raised)}',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '${id ? 'dari' : 'of'} Rp ${formatCurrency(campaign.target)} ${id ? 'target' : 'goal'}',
          style: metadata,
        ),
        const SizedBox(height: 8),
        Text(
          '${campaign.type == CampaignType.equity ? '${campaign.investorsCount ?? 0} ${id ? 'investor' : 'investors'}' : '${campaign.donorsCount} ${id ? 'donatur' : 'supporters'}'} · ${campaign.timeLeftLabel}',
          style: metadata,
        ),
        if (campaign.type == CampaignType.equity &&
            campaign.equityChangePct != null)
          Text(
            '${campaign.equityChangePct!.toStringAsFixed(1)}% equity',
            style: metadata,
          ),
        if (!compact &&
            (campaign.updatesCount > 0 || campaign.milestonesCount > 0))
          Text(
            '${campaign.updatesCount} ${id ? 'kabar' : 'updates'} · ${campaign.milestonesCount} ${id ? 'pencapaian' : 'milestones'}',
            style: metadata,
          ),
      ],
    );
    return Material(
      color: colors.surface,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: compact
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 80, child: visual()),
                    const SizedBox(width: 12),
                    Expanded(child: details),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [visual(), const SizedBox(height: 12), details],
                ),
        ),
      ),
    );
  }
}
