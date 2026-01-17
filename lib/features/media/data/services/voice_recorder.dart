import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:uuid/uuid.dart';

/// Voice recorder state
enum VoiceRecorderState {
  idle,
  recording,
  paused,
  stopped,
}

/// Voice recorder service for recording voice messages
/// Uses the `record` package for cross-platform audio recording
class VoiceRecorderService {
  VoiceRecorderService({AudioRecorder? recorder})
      : _recorder = recorder ?? AudioRecorder();

  final AudioRecorder _recorder;
  final _uuid = const Uuid();

  String? _currentRecordingPath;
  VoiceRecorderState _state = VoiceRecorderState.idle;
  DateTime? _recordingStartTime;
  Duration _pausedDuration = Duration.zero;
  DateTime? _pauseStartTime;

  /// Current recorder state
  VoiceRecorderState get state => _state;

  /// Whether currently recording
  bool get isRecording => _state == VoiceRecorderState.recording;

  /// Whether recording is paused
  bool get isPaused => _state == VoiceRecorderState.paused;

  /// Whether recorder is idle
  bool get isIdle => _state == VoiceRecorderState.idle;

  /// Get current recording duration
  Duration get recordingDuration {
    if (_recordingStartTime == null) return Duration.zero;

    final now = DateTime.now();
    final elapsed = now.difference(_recordingStartTime!);

    if (_state == VoiceRecorderState.paused && _pauseStartTime != null) {
      return elapsed - _pausedDuration - now.difference(_pauseStartTime!);
    }

    return elapsed - _pausedDuration;
  }

  /// Stream of amplitude values for visualizing audio levels
  Stream<Amplitude> get amplitudeStream {
    return Stream.periodic(
      const Duration(milliseconds: 100),
      (_) async => await _recorder.getAmplitude(),
    ).asyncMap((event) => event);
  }

  /// Check if recording permission is granted
  Future<bool> hasPermission() async {
    return await _recorder.hasPermission();
  }

  /// Start recording voice message
  /// Returns the file path where recording will be saved
  Future<String?> startRecording() async {
    try {
      // Check permission
      final hasPermission = await _recorder.hasPermission();
      if (!hasPermission) {
        return null;
      }

      // Generate unique file path
      final directory = await getTemporaryDirectory();
      final fileName = 'voice_${_uuid.v4()}.m4a';
      _currentRecordingPath = '${directory.path}/$fileName';

      // Configure recording settings
      const config = RecordConfig(
        encoder: AudioEncoder.aacLc,
        sampleRate: 44100,
        bitRate: 128000,
        numChannels: 1, // Mono for voice
      );

      // Start recording
      await _recorder.start(config, path: _currentRecordingPath!);

      _state = VoiceRecorderState.recording;
      _recordingStartTime = DateTime.now();
      _pausedDuration = Duration.zero;
      _pauseStartTime = null;

      return _currentRecordingPath;
    } catch (e) {
      _state = VoiceRecorderState.idle;
      _currentRecordingPath = null;
      return null;
    }
  }

  /// Pause current recording
  Future<void> pauseRecording() async {
    if (_state != VoiceRecorderState.recording) return;

    try {
      await _recorder.pause();
      _state = VoiceRecorderState.paused;
      _pauseStartTime = DateTime.now();
    } catch (e) {
      // Ignore pause errors
    }
  }

  /// Resume paused recording
  Future<void> resumeRecording() async {
    if (_state != VoiceRecorderState.paused) return;

    try {
      await _recorder.resume();
      _state = VoiceRecorderState.recording;

      // Add paused duration
      if (_pauseStartTime != null) {
        _pausedDuration += DateTime.now().difference(_pauseStartTime!);
        _pauseStartTime = null;
      }
    } catch (e) {
      // Ignore resume errors
    }
  }

  /// Stop recording and return the recorded file
  /// Returns null if recording failed or was cancelled
  Future<File?> stopRecording() async {
    if (_state == VoiceRecorderState.idle) return null;

    try {
      final path = await _recorder.stop();
      _state = VoiceRecorderState.stopped;

      if (path == null || path.isEmpty) {
        return null;
      }

      final file = File(path);
      if (await file.exists()) {
        // Reset state
        _resetState();
        return file;
      }

      return null;
    } catch (e) {
      _resetState();
      return null;
    }
  }

  /// Cancel recording and delete the file
  Future<void> cancelRecording() async {
    try {
      await _recorder.stop();

      // Delete the recorded file if exists
      if (_currentRecordingPath != null) {
        final file = File(_currentRecordingPath!);
        if (await file.exists()) {
          await file.delete();
        }
      }
    } catch (e) {
      // Ignore errors
    } finally {
      _resetState();
    }
  }

  void _resetState() {
    _state = VoiceRecorderState.idle;
    _currentRecordingPath = null;
    _recordingStartTime = null;
    _pausedDuration = Duration.zero;
    _pauseStartTime = null;
  }

  /// Dispose the recorder
  Future<void> dispose() async {
    await cancelRecording();
    await _recorder.dispose();
  }
}
