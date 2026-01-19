import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/services/security_settings_service.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';

class TwoFactorSetupScreen extends HookWidget {
  const TwoFactorSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final secret = useMemoized(() => _generateSecret());
    final codeControllers = List.generate(6, (_) => useTextEditingController());
    final focusNodes = List.generate(6, (_) => useFocusNode());
    final isLoading = useState(false);
    final step = useState(1); // 1: Setup, 2: Verify

    Future<void> handleContinue() async {
      step.value = 2;
      // Auto-focus first code input
      await Future.delayed(const Duration(milliseconds: 100));
      focusNodes[0].requestFocus();
    }

    Future<void> handleVerify() async {
      final code = codeControllers.map((c) => c.text).join();
      
      if (code.length != 6) {
        AppMessenger.showToast(
          message: 'Please enter the 6-digit code',
          icon: Icons.error_outline,
          duration: const Duration(seconds: 2),
        );
        return;
      }

      isLoading.value = true;

      // Simulate verification
      await Future.delayed(const Duration(seconds: 1));

      // In production, verify with backend
      // For now, just save the secret
      final securityService = SecuritySettingsService();
      final success = await securityService.enableTwoFactor(secret);

      isLoading.value = false;

      if (success && context.mounted) {
        Navigator.of(context).pop(true);
        AppMessenger.showToast(
          message: 'Two-factor authentication enabled',
          icon: Icons.shield_outlined,
          duration: const Duration(seconds: 2),
        );
      }
    }

    return SettingsPageScaffold(
      title: 'Two-Factor Authentication',
      subtitle: 'Add an extra layer of security',
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (step.value == 1) ...[
            // Step 1: Setup instructions
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.shield_outlined,
                    size: 64,
                    color: colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Set up authenticator app',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Use an authenticator app like Google Authenticator, Microsoft Authenticator, or Authy.',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Step 1: Scan QR Code',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Open your authenticator app and scan this QR code:',
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorScheme.outline.withValues(alpha: 0.3),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    // Placeholder for QR code
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: colorScheme.outline.withValues(alpha: 0.2),
                        ),
                      ),
                      child: _buildQRCodePlaceholder(secret),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Velora Account',
                      style: textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Step 2: Manual Entry',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Or enter this code manually in your app:',
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: colorScheme.outline.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      secret,
                      style: textTheme.titleMedium?.copyWith(
                        fontFamily: 'monospace',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: secret));
                      AppMessenger.showToast(
                        message: 'Code copied to clipboard',
                        icon: Icons.check_circle_outline,
                        duration: const Duration(seconds: 2),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: handleContinue,
              child: const Text('Continue to Verification'),
            ),
          ] else ...[
            // Step 2: Verification
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.pin_outlined,
                    size: 64,
                    color: colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Enter verification code',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Enter the 6-digit code from your authenticator app',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 48,
                  child: TextField(
                    controller: codeControllers[index],
                    focusNode: focusNodes[index],
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: colorScheme.surfaceContainerHighest,
                    ),
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 5) {
                        focusNodes[index + 1].requestFocus();
                      } else if (value.isEmpty && index > 0) {
                        focusNodes[index - 1].requestFocus();
                      }
                    },
                  ),
                );
              }),
            ),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: isLoading.value ? null : handleVerify,
              child: isLoading.value
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Verify and Enable'),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => step.value = 1,
              child: const Text('Back to QR Code'),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQRCodePlaceholder(String secret) {
    // Simple visual representation of QR code pattern
    return CustomPaint(
      painter: _QRCodePainter(secret),
    );
  }

  String _generateSecret() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567';
    final random = Random.secure();
    return List.generate(32, (_) => chars[random.nextInt(chars.length)]).join();
  }
}

class _QRCodePainter extends CustomPainter {
  _QRCodePainter(this.secret);

  final String secret;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.black;
    final blockSize = size.width / 25;

    // Create a pseudo-random QR code pattern based on secret
    final random = Random(secret.hashCode);

    for (var i = 0; i < 25; i++) {
      for (var j = 0; j < 25; j++) {
        // Add position markers (corners)
        if ((i < 7 && j < 7) || (i < 7 && j > 17) || (i > 17 && j < 7)) {
          if ((i == 0 || i == 6 || j == 0 || j == 6) ||
              (i >= 2 && i <= 4 && j >= 2 && j <= 4)) {
            canvas.drawRect(
              Rect.fromLTWH(i * blockSize, j * blockSize, blockSize, blockSize),
              paint,
            );
          }
        } else if (random.nextBool()) {
          canvas.drawRect(
            Rect.fromLTWH(i * blockSize, j * blockSize, blockSize, blockSize),
            paint,
          );
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
