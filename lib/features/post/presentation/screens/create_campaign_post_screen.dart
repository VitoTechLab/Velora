import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/campaign/domain/entities/campaign_category_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/campaign/domain/usecases/get_campaign_categories_usecase.dart';
import 'package:velora/features/post/presentation/bloc/campaign_post_bloc.dart';
import 'package:velora/features/post/presentation/bloc/campaign_post_event.dart';
import 'package:velora/features/post/presentation/bloc/campaign_post_state.dart';
import 'package:velora/l10n/app_localizations.dart';

class CreateCampaignPostScreen extends HookWidget {
  const CreateCampaignPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context);

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final targetAmountController = useTextEditingController();
    final locationController = useTextEditingController();

    final endDate = useState<DateTime?>(null);
    final categories = useState<List<CampaignCategoryEntity>>([]);
    final selectedCategory = useState<CampaignCategoryEntity?>(null);
    final isLoadingCategories = useState(false);

    useEffect(() {
      Future<void> loadCategories() async {
        isLoadingCategories.value = true;
        final usecase = getIt<GetCampaignCategoriesUsecase>();
        final result = await usecase();
        result.fold(
          (failure) {
            AppMessenger.showToast(
              message: failure.message,
              icon: Icons.error_outline,
            );
          },
          (data) {
            categories.value = data;
          },
        );
        isLoadingCategories.value = false;
      }

      loadCategories();
      return null;
    }, const []);

    Future<void> pickEndDate() async {
      final now = DateTime.now();
      final picked = await showDatePicker(
        context: context,
        initialDate: now.add(const Duration(days: 7)),
        firstDate: now,
        lastDate: now.add(const Duration(days: 365)),
      );
      if (picked != null) {
        endDate.value = picked;
      }
    }

    Future<void> onSubmit() async {
      final title = titleController.text.trim();
      final description = descriptionController.text.trim();
      final targetRaw = targetAmountController.text.trim();

      if (title.isEmpty || description.isEmpty || targetRaw.isEmpty) {
        AppMessenger.showToast(
          message: t?.campaignCreateRequiredFields ??
              'Please fill all required fields',
          icon: Icons.info_outline,
        );
        return;
      }

      final target = double.tryParse(
        targetRaw.replaceAll(',', '').replaceAll(' ', ''),
      );
      if (target == null || target <= 0) {
        AppMessenger.showToast(
          message:
              t?.campaignCreateInvalidTarget ?? 'Target amount must be > 0',
          icon: Icons.info_outline,
        );
        return;
      }

      final userId = context.read<AuthBloc>().state.userId;
      if (userId == null || userId.isEmpty) {
        AppMessenger.showToast(
          message: 'You must be signed in',
          icon: Icons.lock_outline,
        );
        return;
      }

      context.read<CampaignPostBloc>().add(
            SubmitCampaignPostEvent(
              userId: userId,
              title: title,
              description: description,
              targetAmount: target,
              categoryId: selectedCategory.value?.id,
              locationCity: locationController.text.trim().isEmpty
                  ? null
                  : locationController.text.trim(),
              endDate: endDate.value,
            ),
          );
    }

    final background = colorScheme.surface;

    return BlocListener<CampaignPostBloc, CampaignPostState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          AppMessenger.showToast(
            message: state.errorMessage!,
            icon: Icons.error_outline,
            isError: true,
          );
        } else if (state.createdCampaign != null) {
          AppMessenger.showToast(
            message:
                t?.campaignCreateSuccess ?? 'Campaign created successfully',
            icon: Icons.check_circle_outline,
          );
          Navigator.of(context).pop(state.createdCampaign);
        }
      },
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: background,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            t?.campaignCreateTitle ?? 'Create Campaign',
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t?.campaignCreateSubtitle ??
                      'Tell your story clearly and set a transparent goal.',
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 24),
                _SectionCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t?.campaignCreateBasicInfo ?? 'Basic information',
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: titleController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: t?.campaignCreateTitleLabel ?? 'Title',
                          hintText:
                              t?.campaignCreateTitleHint ?? 'Save a local cafe',
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: descriptionController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: t?.campaignCreateDescriptionLabel ??
                              'Description',
                          hintText: t?.campaignCreateDescriptionHint ??
                              'Share the background, impact, and how funds will be used.',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                _SectionCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t?.campaignCreateGoalSection ?? 'Goal & duration',
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: targetAmountController,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        decoration: InputDecoration(
                          labelText:
                              t?.campaignCreateTargetLabel ?? 'Target amount',
                          prefixText: 'Rp ',
                          hintText:
                              t?.campaignCreateTargetHint ?? 'e.g. 5000000',
                        ),
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: pickEndDate,
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 20,
                                color: colorScheme.primary,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  endDate.value == null
                                      ? (t?.campaignCreateEndDateLabel ??
                                          'End date (optional)')
                                      : '${t?.campaignCreateEndDateLabel ?? 'End date'}: '
                                          '${endDate.value?.toLocal().toString().split(' ').first}',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: endDate.value == null
                                        ? colorScheme.onSurface
                                            .withValues(alpha: 0.6)
                                        : colorScheme.onSurface,
                                  ),
                                ),
                              ),
                              const Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                _SectionCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t?.campaignCreateContextSection ?? 'Context',
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: locationController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: t?.campaignCreateLocationLabel ??
                              'City (optional)',
                          hintText: t?.campaignCreateLocationHint ??
                              'Where is this campaign located?',
                        ),
                      ),
                      const SizedBox(height: 16),
                      if (isLoadingCategories.value)
                        Row(
                          children: [
                            const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              t?.campaignCreateLoadingCategories ??
                                  'Loading categories...',
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurface
                                    .withValues(alpha: 0.6),
                              ),
                            ),
                          ],
                        )
                      else
                        DropdownButtonFormField<CampaignCategoryEntity>(
                          value: selectedCategory.value,
                          items: categories.value
                              .map(
                                (c) => DropdownMenuItem(
                                  value: c,
                                  child: Text(c.name),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            selectedCategory.value = value;
                          },
                          decoration: InputDecoration(
                            labelText:
                                t?.campaignCreateCategoryLabel ?? 'Category',
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                BlocBuilder<CampaignPostBloc, CampaignPostState>(
                  builder: (context, state) {
                    final submitting = state.isSubmitting;
                    return SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: submitting ? null : onSubmit,
                        icon: submitting
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              )
                            : const Icon(Icons.rocket_launch_outlined),
                        label: Text(
                          t?.campaignCreateCTA ?? 'Publish campaign',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.4),
        ),
      ),
      child: child,
    );
  }
}
