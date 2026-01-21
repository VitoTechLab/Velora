import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// Simple full-screen video player for chat videos
class ChatVideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  const ChatVideoPlayerScreen({
    super.key,
    required this.videoUrl,
  });

  @override
  State<ChatVideoPlayerScreen> createState() => _ChatVideoPlayerScreenState();
}

class _ChatVideoPlayerScreenState extends State<ChatVideoPlayerScreen> {
  late final VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..setLooping(true)
      ..initialize().then((_) {
        if (!mounted) return;
        setState(() {
          _isInitialized = true;
        });
        _controller.play();
      }).catchError((_) {
        if (!mounted) return;
        setState(() {
          _hasError = true;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Video'),
      ),
      body: Center(
        child: _hasError
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: colorScheme.error,
                    size: 40,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Cannot play this video',
                    style: TextStyle(color: colorScheme.onSurface),
                  ),
                ],
              )
            : !_isInitialized
                ? const CircularProgressIndicator(color: Colors.white)
                : AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        VideoPlayer(_controller),
                        _ControlsOverlay(controller: _controller),
                        VideoProgressIndicator(
                          _controller,
                          allowScrubbing: true,
                          colors: VideoProgressColors(
                            playedColor: colorScheme.primary,
                            bufferedColor: Colors.white.withValues(alpha: 0.4),
                            backgroundColor:
                                Colors.white.withValues(alpha: 0.2),
                          ),
                        ),
                      ],
                    ),
                  ),
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  final VideoPlayerController controller;

  const _ControlsOverlay({required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!controller.value.isInitialized) return;
        if (controller.value.isPlaying) {
          controller.pause();
        } else {
          controller.play();
        }
      },
      child: Stack(
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: controller.value.isPlaying
                ? const SizedBox.shrink()
                : Container(
                    color: Colors.black26,
                    child: const Center(
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
