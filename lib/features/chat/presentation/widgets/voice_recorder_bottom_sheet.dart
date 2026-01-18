import 'dart:async';

import 'package:flutter/material.dart';
import 'package:velora/features/media/data/services/voice_recorder.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Bottom sheet widget for recording voice messages
class VoiceRecorderBottomSheet extends StatefulWidget {
  const VoiceRecorderBottomSheet({super.key});

  /// Show the voice recorder bottom sheet and return the recorded file path
  static Future<String?> show(BuildContext context) async {
    return showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const VoiceRecorderBottomSheet(),
    );
  }

  @override
  State<VoiceRecorderBottomSheet> createState() =>
      _VoiceRecorderBottomSheetState();
}

class _VoiceRecorderBottomSheetState extends State<VoiceRecorderBottomSheet>
    with SingleTickerProviderStateMixin {
  final VoiceRecorderService _recorderService = VoiceRecorderService();
  Timer? _durationTimer;
  Duration _recordingDuration = Duration.zero;
  bool _isRecording = false;
  bool _isPaused = false;
  bool _hasPermission = false;
  bool _isCheckingPermission = true;
  String? _recordedFilePath;

  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
    _checkPermission();
  }

  @override
  void dispose() {
    _durationTimer?.cancel();
    _pulseController.dispose();
    _recorderService.dispose();
    super.dispose();
  }

  Future<void> _checkPermission() async {
    final hasPermission = await _recorderService.hasPermission();
    if (mounted) {
      setState(() {
        _hasPermission = hasPermission;
        _isCheckingPermission = false;
      });
    }
  }

  void _startDurationTimer() {
    _durationTimer?.cancel();
    _durationTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (mounted && _isRecording && !_isPaused) {
        setState(() {
          _recordingDuration = _recorderService.recordingDuration;
        });
      }
    });
  }

  Future<void> _startRecording() async {
    final path = await _recorderService.startRecording();
    if (path != null && mounted) {
      setState(() {
        _isRecording = true;
        _isPaused = false;
        _recordingDuration = Duration.zero;
      });
      _pulseController.repeat(reverse: true);
      _startDurationTimer();
    }
  }

  Future<void> _pauseRecording() async {
    await _recorderService.pauseRecording();
    if (mounted) {
      setState(() {
        _isPaused = true;
      });
      _pulseController.stop();
    }
  }

  Future<void> _resumeRecording() async {
    await _recorderService.resumeRecording();
    if (mounted) {
      setState(() {
        _isPaused = false;
      });
      _pulseController.repeat(reverse: true);
    }
  }

  Future<void> _stopRecording() async {
    _durationTimer?.cancel();
    _pulseController.stop();
    _pulseController.reset();

    final file = await _recorderService.stopRecording();
    if (file != null && mounted) {
      _recordedFilePath = file.path;
      Navigator.of(context).pop(_recordedFilePath);
    }
  }

  Future<void> _cancelRecording() async {
    _durationTimer?.cancel();
    _pulseController.stop();
    _pulseController.reset();

    await _recorderService.cancelRecording();
    if (mounted) {
      Navigator.of(context).pop(null);
    }
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    final millis = (duration.inMilliseconds.remainder(1000) ~/ 100).toString();
    return '$minutes:$seconds.$millis';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.surface.withValues(alpha: 0.98),
            colorScheme.surfaceContainerHighest.withValues(alpha: 0.95),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        border: Border(
          top: BorderSide(
            color: colorScheme.outline.withValues(alpha: 0.15),
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 20,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Drag handle
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.primary.withValues(alpha: 0.3),
                      colorScheme.secondary.withValues(alpha: 0.3),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Title
              Text(
                t.voiceRecorderTitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),

              // Permission check
              if (_isCheckingPermission) ...[
                const CircularProgressIndicator(),
                const SizedBox(height: 16),
                Text(t.voiceRecorderCheckingPermission),
              ] else if (!_hasPermission) ...[
                Icon(
                  Icons.mic_off,
                  size: 64,
                  color: colorScheme.error,
                ),
                const SizedBox(height: 16),
                Text(
                  t.voiceRecorderNoPermission,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.error,
                  ),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _checkPermission,
                  child: Text(t.voiceRecorderRetryPermission),
                ),
              ] else ...[
                // Recording visualization
                AnimatedBuilder(
                  animation: _pulseAnimation,
                  builder: (context, child) {
                    return Container(
                      width: 120 *
                          (_isRecording && !_isPaused
                              ? _pulseAnimation.value
                              : 1.0),
                      height: 120 *
                          (_isRecording && !_isPaused
                              ? _pulseAnimation.value
                              : 1.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: _isRecording
                              ? [
                                  colorScheme.error.withValues(alpha: 0.3),
                                  colorScheme.error.withValues(alpha: 0.1),
                                  Colors.transparent,
                                ]
                              : [
                                  colorScheme.primary.withValues(alpha: 0.2),
                                  colorScheme.secondary.withValues(alpha: 0.1),
                                  Colors.transparent,
                                ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: (_isRecording
                                    ? colorScheme.error
                                    : colorScheme.primary)
                                .withValues(
                                    alpha: 0.3 *
                                        (_isRecording && !_isPaused
                                            ? _pulseAnimation.value
                                            : 1.0)),
                            blurRadius: 20 *
                                (_isRecording && !_isPaused
                                    ? _pulseAnimation.value
                                    : 1.0),
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: _isRecording
                                  ? [
                                      colorScheme.error,
                                      colorScheme.error.withValues(alpha: 0.8),
                                    ]
                                  : [
                                      colorScheme.primary,
                                      colorScheme.secondary,
                                    ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: (_isRecording
                                        ? colorScheme.error
                                        : colorScheme.primary)
                                    .withValues(alpha: 0.4),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Icon(
                            _isRecording
                                ? (_isPaused ? Icons.pause : Icons.mic)
                                : Icons.mic,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),

                // Duration display
                Text(
                  _formatDuration(_recordingDuration),
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontFeatures: const [FontFeature.tabularFigures()],
                  ),
                ),
                const SizedBox(height: 8),

                // Status text
                Text(
                  _isRecording
                      ? (_isPaused
                          ? t.voiceRecorderPaused
                          : t.voiceRecorderRecording)
                      : t.voiceRecorderTapToStart,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 32),

                // Controls
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Cancel button
                    if (_isRecording)
                      _buildControlButton(
                        icon: Icons.close,
                        label: t.voiceRecorderCancel,
                        onPressed: _cancelRecording,
                        backgroundColor: colorScheme.errorContainer,
                        iconColor: colorScheme.onErrorContainer,
                      )
                    else
                      const SizedBox(width: 80),

                    // Main record/stop button
                    if (!_isRecording)
                      _buildMainButton(
                        icon: Icons.fiber_manual_record,
                        onPressed: _startRecording,
                        backgroundColor: colorScheme.error,
                        iconColor: colorScheme.onError,
                      )
                    else
                      _buildMainButton(
                        icon: Icons.stop,
                        onPressed: _stopRecording,
                        backgroundColor: colorScheme.primary,
                        iconColor: colorScheme.onPrimary,
                      ),

                    // Pause/Resume button
                    if (_isRecording)
                      _buildControlButton(
                        icon: _isPaused ? Icons.play_arrow : Icons.pause,
                        label: _isPaused
                            ? t.voiceRecorderResume
                            : t.voiceRecorderPause,
                        onPressed:
                            _isPaused ? _resumeRecording : _pauseRecording,
                        backgroundColor: colorScheme.secondaryContainer,
                        iconColor: colorScheme.onSecondaryContainer,
                      )
                    else
                      const SizedBox(width: 80),
                  ],
                ),
              ],
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
    required Color backgroundColor,
    required Color iconColor,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                backgroundColor,
                backgroundColor.withValues(alpha: 0.8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: backgroundColor.withValues(alpha: 0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            shape: const CircleBorder(),
            child: InkWell(
              onTap: onPressed,
              customBorder: const CircleBorder(),
              child: Container(
                width: 56,
                height: 56,
                alignment: Alignment.center,
                child: Icon(icon, color: Colors.white, size: 28),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }

  Widget _buildMainButton({
    required IconData icon,
    required VoidCallback onPressed,
    required Color backgroundColor,
    required Color iconColor,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            backgroundColor,
            backgroundColor.withValues(alpha: 0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: backgroundColor.withValues(alpha: 0.4),
            blurRadius: 12,
            offset: const Offset(0, 6),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Container(
            width: 72,
            height: 72,
            alignment: Alignment.center,
            child: Icon(icon, color: Colors.white, size: 36),
          ),
        ),
      ),
    );
  }
}
