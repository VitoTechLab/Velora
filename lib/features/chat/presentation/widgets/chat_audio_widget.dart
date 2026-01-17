import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

/// Widget for displaying and playing audio messages (voice messages or audio files)
class ChatAudioWidget extends StatefulWidget {
  final String audioUrl;
  final String? caption;
  final String time;
  final bool isSender;
  final bool isRead;
  final double? durationSeconds;
  final bool isVoiceMessage;

  const ChatAudioWidget({
    super.key,
    required this.audioUrl,
    this.caption,
    required this.time,
    required this.isSender,
    this.isRead = false,
    this.durationSeconds,
    this.isVoiceMessage = true,
  });

  @override
  State<ChatAudioWidget> createState() => _ChatAudioWidgetState();
}

class _ChatAudioWidgetState extends State<ChatAudioWidget> {
  late AudioPlayer _audioPlayer;
  PlayerState _playerState = PlayerState.stopped;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  StreamSubscription<Duration>? _durationSubscription;
  StreamSubscription<Duration>? _positionSubscription;
  StreamSubscription<PlayerState>? _playerStateSubscription;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _initAudioPlayer();
  }

  void _initAudioPlayer() {
    // Set initial duration if provided
    if (widget.durationSeconds != null) {
      _duration =
          Duration(milliseconds: (widget.durationSeconds! * 1000).toInt());
    }

    _durationSubscription = _audioPlayer.onDurationChanged.listen((duration) {
      if (mounted) {
        setState(() {
          _duration = duration;
        });
      }
    });

    _positionSubscription = _audioPlayer.onPositionChanged.listen((position) {
      if (mounted) {
        setState(() {
          _position = position;
        });
      }
    });

    _playerStateSubscription =
        _audioPlayer.onPlayerStateChanged.listen((state) {
      if (mounted) {
        setState(() {
          _playerState = state;
          if (state == PlayerState.completed) {
            _position = Duration.zero;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerStateSubscription?.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playPause() async {
    if (_playerState == PlayerState.playing) {
      await _audioPlayer.pause();
    } else {
      setState(() {
        _isLoading = true;
      });
      try {
        await _audioPlayer.play(UrlSource(widget.audioUrl));
      } catch (e) {
        debugPrint('Error playing audio: $e');
      } finally {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }

  Future<void> _seek(double value) async {
    final position =
        Duration(milliseconds: (value * _duration.inMilliseconds).toInt());
    await _audioPlayer.seek(position);
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bubbleColor = widget.isSender
        ? colorScheme.primary
        : colorScheme.surfaceContainerHighest;
    final contentColor =
        widget.isSender ? colorScheme.onPrimary : colorScheme.onSurface;
    final secondaryContentColor = widget.isSender
        ? colorScheme.onPrimary.withValues(alpha: 0.7)
        : colorScheme.onSurfaceVariant;

    final isPlaying = _playerState == PlayerState.playing;
    final progress = _duration.inMilliseconds > 0
        ? _position.inMilliseconds / _duration.inMilliseconds
        : 0.0;

    return Container(
      constraints: const BoxConstraints(maxWidth: 280, minWidth: 200),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(16),
          topRight: const Radius.circular(16),
          bottomLeft: widget.isSender ? const Radius.circular(16) : Radius.zero,
          bottomRight:
              widget.isSender ? Radius.zero : const Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Audio player row
          Row(
            children: [
              // Play/Pause button
              Material(
                color: widget.isSender
                    ? colorScheme.onPrimary.withValues(alpha: 0.2)
                    : colorScheme.primary.withValues(alpha: 0.1),
                shape: const CircleBorder(),
                child: InkWell(
                  onTap: _isLoading ? null : _playPause,
                  customBorder: const CircleBorder(),
                  child: Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    child: _isLoading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: widget.isSender
                                  ? colorScheme.onPrimary
                                  : colorScheme.primary,
                            ),
                          )
                        : Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                            color: widget.isSender
                                ? colorScheme.onPrimary
                                : colorScheme.primary,
                            size: 24,
                          ),
                  ),
                ),
              ),
              const SizedBox(width: 8),

              // Waveform / Progress
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Custom waveform-like progress bar
                    if (widget.isVoiceMessage)
                      _buildWaveformProgress(
                          progress, contentColor, secondaryContentColor)
                    else
                      _buildLinearProgress(
                          progress, contentColor, secondaryContentColor),
                    const SizedBox(height: 4),
                    // Duration
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _formatDuration(_position),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: secondaryContentColor,
                            fontFeatures: const [FontFeature.tabularFigures()],
                          ),
                        ),
                        Text(
                          _formatDuration(_duration),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: secondaryContentColor,
                            fontFeatures: const [FontFeature.tabularFigures()],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Caption if exists
          if (widget.caption != null && widget.caption!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              widget.caption!,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: contentColor,
              ),
            ),
          ],

          // Time and read status
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              Text(
                widget.time,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: secondaryContentColor,
                ),
              ),
              if (widget.isSender) ...[
                const SizedBox(width: 4),
                Icon(
                  widget.isRead ? Icons.done_all : Icons.done,
                  size: 14,
                  color: widget.isRead
                      ? (widget.isSender ? Colors.white70 : colorScheme.primary)
                      : secondaryContentColor,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWaveformProgress(
    double progress,
    Color activeColor,
    Color inactiveColor,
  ) {
    // Generate fake waveform bars for voice message visualization
    const barCount = 30;
    final waveformData = List.generate(barCount, (index) {
      // Create a pattern that looks like a waveform
      final x = index / barCount;
      return 0.3 + 0.7 * (0.5 + 0.5 * _waveformHeight(x));
    });

    return GestureDetector(
      onTapDown: (details) {
        final box = context.findRenderObject() as RenderBox?;
        if (box != null) {
          final localPosition = details.localPosition;
          final width = box.size.width - 60; // Account for button width
          final seekProgress = (localPosition.dx / width).clamp(0.0, 1.0);
          _seek(seekProgress);
        }
      },
      child: SizedBox(
        height: 28,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(barCount, (index) {
            final barProgress = index / barCount;
            final isActive = barProgress <= progress;
            final height = waveformData[index] * 24;

            return Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 0.5),
                height: height,
                decoration: BoxDecoration(
                  color: isActive ? activeColor : inactiveColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  double _waveformHeight(double x) {
    // Simulate a voice waveform pattern
    return (0.5 +
            0.3 * _sin(x * 12) +
            0.2 * _sin(x * 24 + 0.5) +
            0.15 * _sin(x * 48 + 1))
        .clamp(0.1, 1.0);
  }

  double _sin(double x) {
    // Simple sine approximation
    x = x % (2 * 3.14159);
    return (x < 3.14159)
        ? (4 * x * (3.14159 - x) / (3.14159 * 3.14159))
        : (-4 * (x - 3.14159) * (2 * 3.14159 - x) / (3.14159 * 3.14159));
  }

  Widget _buildLinearProgress(
    double progress,
    Color activeColor,
    Color inactiveColor,
  ) {
    return GestureDetector(
      onTapDown: (details) {
        final box = context.findRenderObject() as RenderBox?;
        if (box != null) {
          final localPosition = details.localPosition;
          final width = box.size.width - 60; // Account for button width
          final seekProgress = (localPosition.dx / width).clamp(0.0, 1.0);
          _seek(seekProgress);
        }
      },
      child: Container(
        height: 28,
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: inactiveColor,
            valueColor: AlwaysStoppedAnimation<Color>(activeColor),
            minHeight: 4,
          ),
        ),
      ),
    );
  }
}
