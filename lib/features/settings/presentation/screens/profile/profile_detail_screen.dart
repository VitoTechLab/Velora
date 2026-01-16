import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/navigation/models/profile_field_edit_args.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

/// Consolidated profile management screen that mirrors the refreshed settings
/// design (flat surfaces, Material 3 color tokens, and shared tiles).
class ProfileDetailScreen extends HookWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    final bio = useState('Passionate about making a difference');
    final website = useState('velora.app');
    final accountType = useState('personal');

    useEffect(
      () {
        final authState = context.read<AuthBloc>().state;
        if (authState.userId != null) {
          context.read<ProfileBloc>().add(
                LoadProfileEvent(userId: authState.userId!),
              );
        }
        return null;
      },
      const [],
    );

    void showPhotoOptions() {
      showModalBottomSheet<void>(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        builder: (context) {
          final sheetTheme = Theme.of(context);
          final sheetColors = sheetTheme.colorScheme;
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.camera_alt, color: sheetColors.primary),
                  title: Text(t.settingsProfilePhotoActionTake),
                  onTap: () {
                    Navigator.pop(context);
                    AppMessenger.showToast(
                      message: t.settingsProfilePhotoToastCamera(
                        t.settingsProfilePhotoLabelProfile,
                      ),
                      icon: Icons.camera_alt_outlined,
                      duration: const Duration(seconds: 2),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.photo_library,
                    color: sheetColors.primary,
                  ),
                  title: Text(t.settingsProfilePhotoActionGallery),
                  onTap: () {
                    Navigator.pop(context);
                    AppMessenger.showToast(
                      message: t.settingsProfilePhotoToastGallery(
                        t.settingsProfilePhotoLabelProfile,
                      ),
                      icon: Icons.photo_library_outlined,
                      duration: const Duration(seconds: 2),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.close, color: sheetColors.onSurface),
                  title: Text(t.settingsProfilePhotoActionCancel),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        },
      );
    }

    Future<void> openEditor({
      required String fieldLabel,
      required ValueNotifier<String> field,
      String? helper,
      TextInputType? keyboardType,
      int maxLines = 1,
      String? hintText,
    }) async {
      final result = await context.push<String>(
        AppRoutePath.settingsProfileFieldEdit,
        extra: ProfileFieldEditArgs(
          title: fieldLabel,
          label: fieldLabel,
          helperText: helper,
          initialValue: field.value,
          keyboardType: keyboardType,
          maxLines: maxLines,
          hintText: hintText,
        ),
      );

      if (result != null && result.trim().isNotEmpty && result != field.value) {
        field.value = result.trim();
        if (!context.mounted) return;
        AppMessenger.showToast(
          message: t.settingsProfileFieldUpdated(fieldLabel),
          icon: Icons.check_circle_outline,
          duration: const Duration(seconds: 2),
        );
      }
    }

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        final profile = profileState.profile;
        final isLoading = profileState.isLoading;

        return SettingsPageScaffold(
          title: t.settingsProfileTitle,
          subtitle: t.settingsProfileSubtitle,
          padding: EdgeInsets.zero,
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  padding: const EdgeInsets.only(bottom: 24),
                  children: [
                    const SizedBox(height: 12),
                    EdgeToEdgeSection(
                      child: Column(
                        children: [
                          Center(
                            child: _ProfileAvatar(
                              avatarUrl: profile?.avatarUrl,
                              onEdit: showPhotoOptions,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            profile?.fullName ?? profile?.username ?? '...',
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '@${profile?.username ?? '...'}',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    _ProfileTileGroup(
                      title: t.settingsProfileInfoSectionTitle,
                      tiles: [
                        if (profile?.fullName != null)
                          SettingsTileData(
                            title: t.settingsProfileFieldName,
                            subtitle: profile!.fullName!,
                            icon: Icons.person_outline,
                            iconColor: colorScheme.primary,
                            onTap: () {},
                          ),
                        SettingsTileData(
                          title: t.settingsProfileFieldUsername,
                          subtitle: '@${profile?.username ?? '...'}',
                          icon: Icons.alternate_email,
                          iconColor: colorScheme.secondary,
                          onTap: () {},
                        ),
                        SettingsTileData(
                          title: t.settingsProfileFieldBio,
                          subtitle: bio.value,
                          icon: Icons.info_outline,
                          iconColor: colorScheme.tertiary,
                          onTap: () => openEditor(
                            fieldLabel: t.settingsProfileFieldBio,
                            field: bio,
                            helper: t.settingsProfileFieldBioHelper,
                            maxLines: 3,
                          ),
                        ),
                        SettingsTileData(
                          title: t.settingsProfileFieldWebsite,
                          subtitle: website.value,
                          icon: Icons.link,
                          iconColor: colorScheme.primary,
                          onTap: () => openEditor(
                            fieldLabel: t.settingsProfileFieldWebsite,
                            field: website,
                            helper: t.settingsProfileFieldWebsiteHelper,
                            keyboardType: TextInputType.url,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    _ProfileTileGroup(
                      title: t.settingsProfileAccountSectionTitle,
                      tiles: [
                        SettingsTileData(
                          title: t.settingsTileAccountStatusTitle,
                          subtitle: t.settingsTileAccountStatusSubtitle,
                          icon: Icons.verified_user_outlined,
                          iconColor: colorScheme.primary,
                          onTap: () => context.pushNamed(
                            AppRouteName.settingsAccountStatus,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    EdgeToEdgeSection(
                      title: t.settingsProfileAccountTypeTitle,
                      subtitle: t.settingsProfileAccountTypeSubtitle,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SegmentedButton<String>(
                            segments: [
                              ButtonSegment(
                                value: 'personal',
                                label:
                                    Text(t.settingsProfileAccountTypePersonal),
                                icon: const Icon(Icons.person),
                              ),
                              ButtonSegment(
                                value: 'organization',
                                label: Text(
                                  t.settingsProfileAccountTypeOrganization,
                                ),
                                icon: const Icon(Icons.business_center),
                              ),
                            ],
                            selected: {accountType.value},
                            onSelectionChanged: (selection) {
                              accountType.value = selection.first;
                            },
                          ),
                          const SizedBox(height: 12),
                          Text(
                            accountType.value == 'personal'
                                ? t.settingsProfileAccountTypePersonalDescription
                                : t
                                    .settingsProfileAccountTypeOrganizationDescription,
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
      },
    );
  }
}

class _ProfileTileGroup extends StatelessWidget {
  const _ProfileTileGroup({
    required this.title,
    required this.tiles,
  });

  final String title;
  final List<SettingsTileData> tiles;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return EdgeToEdgeSection(
      title: title,
      child: Column(
        children: [
          for (int i = 0; i < tiles.length; i++) ...[
            SettingsTile(data: tiles[i]),
            if (i != tiles.length - 1)
              Divider(
                height: 0,
                indent: tiles[i].icon != null ? 72 : 16,
                endIndent: 16,
                color: colorScheme.outlineVariant.withValues(alpha: 0.4),
              ),
          ],
        ],
      ),
    );
  }
}

// class _CoverPhoto extends StatelessWidget {
//   const _CoverPhoto({required this.hasCoverPhoto, required this.onEdit});

//   final bool hasCoverPhoto;
//   final VoidCallback onEdit;

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     return Stack(
//       children: [
//         Container(
//           height: 180,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(24),
//             image: hasCoverPhoto
//                 ? const DecorationImage(
//                     image: NetworkImage('https://via.placeholder.com/800x300'),
//                     fit: BoxFit.cover,
//                   )
//                 : null,
//             gradient: hasCoverPhoto
//                 ? null
//                 : LinearGradient(
//                     colors: [
//                       colorScheme.primaryContainer,
//                       colorScheme.secondaryContainer,
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//           ),
//           child: hasCoverPhoto
//               ? null
//               : Center(
//                   child: Icon(
//                     Icons.landscape,
//                     size: 64,
//                     color: colorScheme.onSecondaryContainer.withValues(
//                       alpha: 0.8,
//                     ),
//                   ),
//                 ),
//         ),
//         Positioned(
//           right: 12,
//           top: 12,
//           child: DecoratedBox(
//             decoration: BoxDecoration(
//               color: colorScheme.surface.withValues(alpha: 0.8),
//               shape: BoxShape.circle,
//             ),
//             child: IconButton(
//               icon: Icon(Icons.camera_alt, color: colorScheme.onSurface),
//               onPressed: onEdit,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({required this.avatarUrl, required this.onEdit});

  final String? avatarUrl;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final hasPhoto = avatarUrl != null && avatarUrl!.isNotEmpty;
    return Stack(
      children: [
        CircleAvatar(
          radius: 64,
          backgroundColor: colorScheme.primaryContainer,
          backgroundImage:
              hasPhoto ? NetworkImage(avatarUrl!) : null,
          child: hasPhoto
              ? null
              : Icon(
                  Icons.person,
                  size: 64,
                  color: colorScheme.onPrimaryContainer,
                ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.camera_alt, color: colorScheme.onPrimary),
              onPressed: onEdit,
            ),
          ),
        ),
      ],
    );
  }
}
