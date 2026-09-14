import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velora/core/services/biometric_service.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';
import 'package:velora/features/profile/data/models/update_profile_model.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/core/di/service_locator.dart';

class EditProfileScreen extends HookWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final biometricService = useMemoized(() => BiometricService());
    final biometricVerified = useState(false);

    useEffect(() {
      Future<void> checkAndVerifyBiometric() async {
        final enabled = await biometricService.isBiometricEnabled();
        final available = await biometricService.isBiometricAvailable();

        if (enabled && available) {
          // Request biometric authentication
          final authenticated = await biometricService.authenticate(
            reason: 'Authenticate to edit your profile',
          );

          if (!authenticated) {
            // Failed authentication - go back
            if (context.mounted) {
              context.pop();
              AppMessenger.showToast(
                message: 'Biometric authentication required',
                icon: Icons.fingerprint,
                isError: true,
              );
            }
          } else {
            biometricVerified.value = true;
          }
        } else {
          biometricVerified.value = true;
        }

        // Load profile after verification
        final authState = context.read<AuthBloc>().state;
        if (authState.userId != null) {
          context.read<ProfileBloc>().add(
            LoadProfileEvent(userId: authState.userId!),
          );
        }
      }

      checkAndVerifyBiometric();
      return null;
    }, const []);

    if (!biometricVerified.value) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.error != null && !state.isLoading) {
          AppMessenger.showToast(
            message: state.error!,
            icon: Icons.error_outline,
            isError: true,
          );
        }
      },
      child: SettingsPageScaffold(
        title: t.settingsProfileEditTitle,
        subtitle: t.settingsProfileEditSubtitle,
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, profileState) {
            if (profileState.isLoading && profileState.profile == null) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: CircularProgressIndicator(),
                ),
              );
            }

            final profile = profileState.profile;
            if (profile == null) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_off_outlined,
                        size: 64,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        t.settingsProfileEditProfileNotFound,
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      FilledButton.tonal(
                        onPressed: () {
                          final authState = context.read<AuthBloc>().state;
                          if (authState.userId != null) {
                            context.read<ProfileBloc>().add(
                              LoadProfileEvent(userId: authState.userId!),
                            );
                          }
                        },
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                ),
              );
            }

            return _EditProfileForm(profile: profile);
          },
        ),
      ),
    );
  }
}

class _EditProfileForm extends HookWidget {
  const _EditProfileForm({required this.profile});

  final dynamic profile;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final usernameController = useTextEditingController(
      text: profile.username ?? '',
    );
    final fullNameController = useTextEditingController(
      text: profile.fullName ?? '',
    );
    final bioController = useTextEditingController(text: profile.bio ?? '');
    final websiteController = useTextEditingController(
      text: profile.websiteUrl ?? '',
    );
    final locationController = useTextEditingController(
      text: profile.location ?? '',
    );

    final selectedAvatar = useState<File?>(null);
    final isUploading = useState(false);
    final uploadedAvatarUrl = useState<String?>(null);

    Future<void> pickImage() async {
      try {
        final picker = ImagePicker();

        // Show bottom sheet to choose source
        final source = await showModalBottomSheet<ImageSource>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (context) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: Text(t.settingsProfilePhotoActionTake),
                    onTap: () => Navigator.pop(context, ImageSource.camera),
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: Text(t.settingsProfilePhotoActionGallery),
                    onTap: () => Navigator.pop(context, ImageSource.gallery),
                  ),
                ],
              ),
            ),
          ),
        );

        if (source == null) return;

        final XFile? image = await picker.pickImage(
          source: source,
          maxWidth: 1024,
          maxHeight: 1024,
          imageQuality: 85,
        );

        if (image != null) {
          selectedAvatar.value = File(image.path);
        }
      } catch (e) {
        if (!context.mounted) return;
        AppMessenger.showToast(
          message: t.settingsProfileEditFailedToPickImage(e.toString()),
          icon: Icons.error_outline,
          isError: true,
        );
      }
    }

    Future<String?> uploadAvatar(File file) async {
      isUploading.value = true;
      try {
        final authState = context.read<AuthBloc>().state;
        final userId = authState.userId;
        if (userId == null) {
          throw Exception('User not authenticated');
        }

        final mediaRepository = getIt<MediaRepository>();
        final result = await mediaRepository.uploadImagesForPost(
          files: [file],
          userId: userId,
          postId: 'profile_$userId',
        );

        return result.fold(
          (failure) {
            AppMessenger.showToast(
              message: t.settingsProfileEditUploadFailed(failure.message),
              icon: Icons.error_outline,
              isError: true,
            );
            return null;
          },
          (assets) {
            if (assets.isNotEmpty) {
              return assets.first.secureUrl;
            }
            return null;
          },
        );
      } catch (e) {
        AppMessenger.showToast(
          message: t.settingsProfileEditUploadError(e.toString()),
          icon: Icons.error_outline,
          isError: true,
        );
        return null;
      } finally {
        isUploading.value = false;
      }
    }

    Future<void> saveProfile() async {
      if (!(formKey.currentState?.validate() ?? false)) {
        return;
      }

      // Upload avatar if selected
      String? newAvatarUrl;
      if (selectedAvatar.value != null) {
        newAvatarUrl = await uploadAvatar(selectedAvatar.value!);
        if (newAvatarUrl == null) {
          return; // Upload failed
        }
        uploadedAvatarUrl.value = newAvatarUrl;
      }

      final updateModel = UpdateProfileModel(
        username: usernameController.text.trim().isNotEmpty
            ? usernameController.text.trim()
            : null,
        fullName: fullNameController.text.trim().isNotEmpty
            ? fullNameController.text.trim()
            : null,
        bio: bioController.text.trim().isNotEmpty
            ? bioController.text.trim()
            : null,
        websiteUrl: websiteController.text.trim().isNotEmpty
            ? websiteController.text.trim()
            : null,
        location: locationController.text.trim().isNotEmpty
            ? locationController.text.trim()
            : null,
        avatarUrl: newAvatarUrl ?? uploadedAvatarUrl.value,
      );

      if (updateModel.isEmpty) {
        AppMessenger.showToast(
          message: t.settingsProfileEditNoChanges,
          icon: Icons.info_outline,
        );
        return;
      }

      if (!context.mounted) return;

      // Dispatch update event
      context.read<ProfileBloc>().add(
        UpdateProfileEvent(updateModel: updateModel),
      );

      // Wait a bit for the update to complete
      await Future.delayed(const Duration(milliseconds: 500));

      if (!context.mounted) return;

      // Reload profile to get updated data
      final authState = context.read<AuthBloc>().state;
      if (authState.userId != null) {
        context.read<ProfileBloc>().add(
          LoadProfileEvent(userId: authState.userId!),
        );
      }

      AppMessenger.showToast(
        message: t.settingsProfileEditProfileUpdated,
        icon: Icons.check_circle_outline,
      );

      // Clear selected avatar after successful save
      selectedAvatar.value = null;

      // Navigate back after short delay
      Future.delayed(const Duration(milliseconds: 300), () {
        if (context.mounted) {
          context.pop();
        }
      });
    }

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final isLoading = state.isLoading || isUploading.value;

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Avatar Section
                Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(
                                  context,
                                ).colorScheme.primary.withValues(alpha: 0.2),
                                width: 3,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: selectedAvatar.value != null
                                  ? FileImage(selectedAvatar.value!)
                                  : (uploadedAvatarUrl.value ??
                                            profile.avatarUrl) !=
                                        null
                                  ? NetworkImage(
                                      uploadedAvatarUrl.value ??
                                          profile.avatarUrl!,
                                    )
                                  : null as ImageProvider?,
                              child:
                                  (selectedAvatar.value == null &&
                                      uploadedAvatarUrl.value == null &&
                                      profile.avatarUrl == null)
                                  ? Text(
                                      profile.fullName
                                              ?.substring(0, 1)
                                              .toUpperCase() ??
                                          'U',
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  : null,
                            ),
                          ),
                          if (isUploading.value)
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black54,
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Material(
                              elevation: 4,
                              shape: const CircleBorder(),
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Theme.of(
                                  context,
                                ).colorScheme.primary,
                                child: IconButton(
                                  icon: const Icon(Icons.camera_alt, size: 20),
                                  onPressed: isLoading ? null : pickImage,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        t.settingsProfileEditTapToChangePhoto,
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),

                // Email (Read-only)
                TextFormField(
                  initialValue: profile.email,
                  decoration: InputDecoration(
                    labelText: t.settingsProfileFieldEmail,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Theme.of(context)
                        .colorScheme
                        .surfaceContainerHighest
                        .withValues(alpha: 0.3),
                    suffixIcon: const Icon(Icons.lock_outline),
                    helperText: 'Email tidak dapat diubah',
                  ),
                  enabled: false,
                ),
                const SizedBox(height: 20),

                // Username
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Masukkan username unik',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.alternate_email),
                    prefixText: '@',
                    helperText: 'Username akan menjadi alamat profil Anda',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Username wajib diisi';
                    }
                    final trimmed = value.trim();
                    if (trimmed.length < 3) {
                      return 'Username minimal 3 karakter';
                    }
                    if (trimmed.length > 30) {
                      return 'Username maksimal 30 karakter';
                    }
                    // Username hanya boleh huruf, angka, underscore, dan titik
                    if (!RegExp(r'^[a-zA-Z0-9._]+$').hasMatch(trimmed)) {
                      return 'Username hanya boleh huruf, angka, underscore, dan titik';
                    }
                    return null;
                  },
                  enabled: !isLoading,
                  textCapitalization: TextCapitalization.none,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),

                // Full Name
                TextFormField(
                  controller: fullNameController,
                  decoration: InputDecoration(
                    labelText: t.settingsProfileFieldFullName,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.person_outline),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return t.settingsProfileEditRequiredField;
                    }
                    return null;
                  },
                  enabled: !isLoading,
                  textCapitalization: TextCapitalization.words,
                ),
                const SizedBox(height: 20),

                // Bio
                TextFormField(
                  controller: bioController,
                  maxLines: 4,
                  maxLength: 150,
                  decoration: InputDecoration(
                    labelText: t.settingsProfileFieldBio,
                    hintText: t.settingsProfileFieldBioHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(bottom: 60),
                      child: Icon(Icons.info_outline),
                    ),
                    alignLabelWithHint: true,
                  ),
                  enabled: !isLoading,
                ),
                const SizedBox(height: 20),

                // Website
                TextFormField(
                  controller: websiteController,
                  decoration: InputDecoration(
                    labelText: t.settingsProfileFieldWebsite,
                    hintText: t.settingsProfileFieldWebsiteHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.link),
                  ),
                  keyboardType: TextInputType.url,
                  enabled: !isLoading,
                ),
                const SizedBox(height: 20),

                // Location
                TextFormField(
                  controller: locationController,
                  decoration: InputDecoration(
                    labelText: t.settingsProfileFieldLocation,
                    hintText: t.settingsProfileFieldLocationHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.location_on_outlined),
                  ),
                  enabled: !isLoading,
                  textCapitalization: TextCapitalization.words,
                ),
                const SizedBox(height: 32),

                // Save Button
                FilledButton(
                  onPressed: isLoading ? null : saveProfile,
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          t.settingsProfileEditSaveChanges,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
