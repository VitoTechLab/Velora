import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:velora/core/services/biometric_service.dart';
import 'package:velora/core/services/security_settings_service.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';

class ChangePasswordDialog extends HookWidget {
  const ChangePasswordDialog({super.key});

  static Future<bool?> show(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) => const ChangePasswordDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final currentPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final currentPasswordVisible = useState(false);
    final newPasswordVisible = useState(false);
    final confirmPasswordVisible = useState(false);
    final isLoading = useState(false);
    final errorMessage = useState<String?>(null);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final authRepository = useMemoized(() => GetIt.instance<AuthRepository>());
    final biometricService = useMemoized(() => BiometricService());
    final useBiometric = useState(false);
    final biometricVerified = useState(false);

    // Check biometric status on mount
    useEffect(() {
      Future<void> checkBiometric() async {
        final enabled = await biometricService.isBiometricEnabled();
        final available = await biometricService.isBiometricAvailable();
        useBiometric.value = enabled && available;
      }
      checkBiometric();
      return null;
    }, const []);

    Future<void> handleBiometricAuth() async {
      isLoading.value = true;
      final authenticated = await biometricService.authenticate(
        reason: 'Authenticate to change your password',
      );
      isLoading.value = false;

      if (authenticated) {
        biometricVerified.value = true;
        AppMessenger.showToast(
          message: 'Biometric verified successfully',
          icon: Icons.check_circle_outline,
        );
      } else {
        AppMessenger.showToast(
          message: 'Biometric authentication failed',
          icon: Icons.error_outline,
          isError: true,
        );
      }
    }

    Future<void> handleChangePassword() async {
      if (!formKey.currentState!.validate()) {
        return;
      }

      // Check biometric verification if enabled
      if (useBiometric.value && !biometricVerified.value) {
        AppMessenger.showToast(
          message: 'Please verify with biometric first',
          icon: Icons.fingerprint,
          isError: true,
        );
        return;
      }

      errorMessage.value = null;
      isLoading.value = true;

      // Update password via Supabase
      final result = await authRepository.updatePassword(
        currentPassword: useBiometric.value ? '' : currentPasswordController.text,
        newPassword: newPasswordController.text,
      );

      isLoading.value = false;

      result.fold(
        (failure) {
          // Handle error
          final message = failure.message;
          errorMessage.value = message.isNotEmpty 
              ? message 
              : 'Failed to change password';
          
          if (context.mounted) {
            AppMessenger.showToast(
              message: errorMessage.value!,
              icon: Icons.error_outline,
              duration: const Duration(seconds: 3),
            );
          }
        },
        (_) async {
          // Success - update last changed date locally
          final securityService = SecuritySettingsService();
          await securityService.updatePasswordChangeDate();

          if (context.mounted) {
            Navigator.of(context).pop(true);
            AppMessenger.showToast(
              message: 'Password changed successfully',
              icon: Icons.check_circle_outline,
              duration: const Duration(seconds: 2),
            );
          }
        },
      );
    }

    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.lock_outline, color: colorScheme.primary),
          const SizedBox(width: 12),
          const Text('Change Password'),
        ],
      ),
      content: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                useBiometric.value
                    ? 'Verify with biometric and choose a new password.'
                    : 'Enter your current password and choose a new one.',
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24),
              
              // Biometric Verification Section
              if (useBiometric.value) ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: biometricVerified.value
                        ? colorScheme.primaryContainer.withValues(alpha: 0.3)
                        : colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: biometricVerified.value
                          ? colorScheme.primary
                          : colorScheme.outline.withValues(alpha: 0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        biometricVerified.value
                            ? Icons.check_circle
                            : Icons.fingerprint,
                        color: biometricVerified.value
                            ? colorScheme.primary
                            : colorScheme.onSurfaceVariant,
                        size: 32,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              biometricVerified.value
                                  ? 'Verified'
                                  : 'Biometric Verification',
                              style: textTheme.titleSmall?.copyWith(
                                color: biometricVerified.value
                                    ? colorScheme.primary
                                    : colorScheme.onSurface,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              biometricVerified.value
                                  ? 'Identity confirmed'
                                  : 'Tap to verify',
                              style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (!biometricVerified.value)
                        FilledButton.tonal(
                          onPressed: isLoading.value ? null : handleBiometricAuth,
                          child: const Text('Verify'),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
              
              // Current Password Field (only if not using biometric)
              if (!useBiometric.value) ...[
                TextFormField(
                  controller: currentPasswordController,
                  obscureText: !currentPasswordVisible.value,
                  decoration: InputDecoration(
                    labelText: 'Current Password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                        currentPasswordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () =>
                          currentPasswordVisible.value = !currentPasswordVisible.value,
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your current password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
              ],
              
              TextFormField(
                controller: newPasswordController,
                obscureText: !newPasswordVisible.value,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  prefixIcon: const Icon(Icons.lock_reset),
                  suffixIcon: IconButton(
                    icon: Icon(
                      newPasswordVisible.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () =>
                        newPasswordVisible.value = !newPasswordVisible.value,
                  ),
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a new password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  if (value == currentPasswordController.text) {
                    return 'New password must be different';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: confirmPasswordController,
                obscureText: !confirmPasswordVisible.value,
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      confirmPasswordVisible.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () =>
                        confirmPasswordVisible.value = !confirmPasswordVisible.value,
                  ),
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your new password';
                  }
                  if (value != newPasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              if (errorMessage.value != null) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colorScheme.errorContainer.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 20,
                        color: colorScheme.error,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          errorMessage.value!,
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onErrorContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 20,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Use at least 8 characters with a mix of letters, numbers, and symbols.',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onPrimaryContainer,
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
      actions: [
        TextButton(
          onPressed: isLoading.value ? null : () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: isLoading.value ? null : handleChangePassword,
          child: isLoading.value
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Change Password'),
        ),
      ],
    );
  }
}
