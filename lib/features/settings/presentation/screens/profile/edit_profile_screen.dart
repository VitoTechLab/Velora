import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';

class EditProfileScreen extends HookWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    final t = AppLocalizations.of(context)!;
    final tabs = [
      Tab(text: t.settingsProfileEditTabName),
      Tab(text: t.settingsProfileEditTabBio),
    ];

    return SettingsPageScaffold(
      title: t.settingsProfileEditTitle,
      subtitle: t.settingsProfileEditSubtitle,
      child: Column(
        children: [
          TabBar(controller: tabController, tabs: tabs),
          const SizedBox(height: 24),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [_NameTab(), _BioDetailsTab()],
            ),
          ),
        ],
      ),
    );
  }
}

// Name Tab
class _NameTab extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final firstNameController = useTextEditingController(text: 'Vito');
    final middleNameController = useTextEditingController();
    final lastNameController = useTextEditingController(text: 'Ananda');
    final reviewDate = useState<DateTime?>(null);
    final selectedProfile = useState('All profiles');
    final t = AppLocalizations.of(context)!;

    Future<void> pickReviewDate() async {
      final now = DateTime.now();
      final picked = await showDatePicker(
        context: context,
        initialDate: reviewDate.value ?? now,
        firstDate: now.subtract(const Duration(days: 365)),
        lastDate: now.add(const Duration(days: 365)),
      );
      if (picked != null) {
        reviewDate.value = picked;
      }
    }

    void submit() {
      if (formKey.currentState?.validate() ?? false) {
        AppMessenger.showToast(
          message: t.settingsProfileEditNameSubmitted,
          icon: Icons.check_circle_outline,
          duration: const Duration(seconds: 2),
        );
      }
    }

    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.settingsProfileEditUsedProfiles,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: firstNameController,
              decoration: InputDecoration(
                labelText: t.settingsProfileEditFirstName,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              validator: (value) => (value == null || value.trim().isEmpty)
                  ? t.settingsProfileEditRequiredField
                  : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: middleNameController,
              decoration: InputDecoration(
                labelText: t.settingsProfileEditMiddleName,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(
                labelText: t.settingsProfileEditLastName,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              validator: (value) => (value == null || value.trim().isEmpty)
                  ? t.settingsProfileEditRequiredField
                  : null,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: t.settingsProfileEditApplyTo,
                border: const OutlineInputBorder(),
              ),
              initialValue: selectedProfile.value,
              items: [
                DropdownMenuItem(
                  value: 'All profiles',
                  child: Text(t.settingsProfileEditApplyAllProfiles),
                ),
                DropdownMenuItem(
                  value: 'Facebook only',
                  child: Text(t.settingsProfileEditApplyFacebook),
                ),
                DropdownMenuItem(
                  value: 'Instagram only',
                  child: Text(t.settingsProfileEditApplyInstagram),
                ),
              ],
              onChanged: (value) {
                if (value != null) selectedProfile.value = value;
              },
            ),
            const SizedBox(height: 16),
            Text(
              t.settingsProfileEditNameChangeInfo,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              t.settingsProfileEditOtherNamesTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              t.settingsProfileEditOtherNamesDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              child: Text(t.settingsProfileEditOtherNamesManage),
            ),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: pickReviewDate,
              icon: const Icon(Icons.calendar_today),
              label: Text(
                reviewDate.value == null
                    ? t.settingsProfileEditReviewSchedule
                    : t.settingsProfileEditReviewScheduled(
                        DateFormat.yMMMd().format(reviewDate.value!),
                      ),
              ),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: submit,
              child: Text(t.settingsProfileEditReviewChange),
            ),
          ],
        ),
      ),
    );
  }
}

// Bio & Details Tab
class _BioDetailsTab extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final bioController = useTextEditingController(
      text: 'Community mobilizer in Jakarta.',
    );
    final websiteController = useTextEditingController(
      text: 'https://velora.app',
    );
    final pronounController = useTextEditingController(text: 'they/them');
    final showProfileInfo = useState(true);
    final displayFollowCount = useState(true);
    final contactPref = useState('Everyone');
    final t = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionTitle(t.settingsProfileEditIdentitySection),
            TextFormField(
              controller: bioController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: t.settingsProfileFieldBio,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: websiteController,
              decoration: InputDecoration(
                labelText: t.settingsProfileFieldWebsite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: pronounController,
              decoration: InputDecoration(
                labelText: t.settingsProfileEditPronounsLabel,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 24),
            _SectionTitle(t.settingsProfileEditContactSection),
            SegmentedButton<String>(
              segments: [
                ButtonSegment(
                  value: 'Everyone',
                  label: Text(t.settingsProfileEditContactEveryone),
                ),
                ButtonSegment(
                  value: 'Followers',
                  label: Text(t.settingsProfileEditContactFollowers),
                ),
                ButtonSegment(
                  value: 'No one',
                  label: Text(t.settingsProfileEditContactNoOne),
                ),
              ],
              selected: {contactPref.value},
              onSelectionChanged: (value) => contactPref.value = value.first,
            ),
            const SizedBox(height: 12),
            SwitchListTile.adaptive(
              value: showProfileInfo.value,
              title: Text(t.settingsProfileEditShowProfileInfo),
              contentPadding: EdgeInsets.zero,
              onChanged: (value) => showProfileInfo.value = value,
            ),
            SwitchListTile.adaptive(
              value: displayFollowCount.value,
              title: Text(t.settingsProfileEditDisplayFollowerCount),
              contentPadding: EdgeInsets.zero,
              onChanged: (value) => displayFollowCount.value = value,
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  AppMessenger.showToast(
                    message: t.settingsProfileEditProfileUpdated,
                    icon: Icons.check_circle_outline,
                    duration: const Duration(seconds: 2),
                  );
                }
              },
              child: Text(t.settingsProfileEditSaveChanges),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
