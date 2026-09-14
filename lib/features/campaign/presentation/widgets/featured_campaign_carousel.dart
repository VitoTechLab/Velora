import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/entities/campaign_model.dart';
import 'category_pill.dart';
import 'verified_badge.dart';
import 'progress_bar.dart';
import 'campaign_card.dart';

class FeaturedCampaignCarousel extends HookWidget {
  final List<CampaignModel> campaigns;
  final void Function(CampaignModel campaign)? onCampaignTap;

  const FeaturedCampaignCarousel({
    super.key,
    required this.campaigns,
    this.onCampaignTap,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0.0);

    useEffect(() {
      void listener() {
        currentPage.value = pageController.page ?? 0.0;
      }

      pageController.addListener(listener);
      return () => pageController.removeListener(listener);
    }, [pageController]);

    return Column(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: pageController,
            itemCount: campaigns.length,
            itemBuilder: (context, index) {
              final campaign = campaigns[index];
              final offset = currentPage.value - index;
              final scale = (1 - (offset.abs() * 0.1)).clamp(0.9, 1.0);

              return Transform.scale(
                scale: scale,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: _FeaturedCard(
                    campaign: campaign,
                    onTap: onCampaignTap != null
                        ? () => onCampaignTap!(campaign)
                        : null,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 12),
        _PageIndicator(
          count: campaigns.length,
          currentPage: currentPage.value.round(),
        ),
      ],
    );
  }
}

class _FeaturedCard extends StatelessWidget {
  final CampaignModel campaign;
  final VoidCallback? onTap;

  const _FeaturedCard({required this.campaign, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Semantics(
      button: true,
      label:
          'Featured campaign ${campaign.title} by ${campaign.creatorName}, ${campaign.progressPercent.toStringAsFixed(0)}% funded',
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: colorScheme.primary.withValues(alpha: 0.8),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      right: 12,
                      child: CategoryPill(category: campaign.category),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      campaign.title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: colorScheme.primaryContainer,
                          child: Icon(
                            Icons.person,
                            size: 14,
                            color: colorScheme.onPrimaryContainer,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            campaign.creatorName,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (campaign.isVerified) const VerifiedBadge(),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ProgressBar(progress: campaign.progressPercent / 100),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Rp ${formatCurrency(campaign.raised)}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.primary,
                            ),
                          ),
                        ),
                        Text(
                          'of Rp ${formatCurrency(campaign.target)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          campaign.ctaLabel,
                          style: theme.textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
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
    );
  }
}

class _PageIndicator extends StatelessWidget {
  final int count;
  final int currentPage;

  const _PageIndicator({required this.count, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: currentPage == index ? 24 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: currentPage == index
                ? colorScheme.primary
                : colorScheme.outlineVariant,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
