import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math' as math;
import 'package:mobile_backend/lessons/stream_async/exercises/circular_progress_screen.dart';
import 'package:mobile_backend/lessons/stream_async/exercises/contact_list_screen.dart';
import 'package:mobile_backend/theme/effects/particle_effect.dart';
import 'package:mobile_backend/theme/effects/wave_effect.dart';
import 'package:mobile_backend/theme/effects/floating_effect.dart';
import 'package:mobile_backend/theme/color.dart';

/// Lesson 1: Stream & Async Programming
/// Learn about asynchronous programming patterns in Dart/Flutter
class StreamAsyncScreen extends StatefulWidget {
  const StreamAsyncScreen({super.key});

  @override
  State<StreamAsyncScreen> createState() => _StreamAsyncScreenState();
}

class _StreamAsyncScreenState extends State<StreamAsyncScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late AnimationController _flowController;
  final List<StreamData> _streamData = [];
  Timer? _streamTimer;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _flowController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    _startStreamAnimation();
  }

  void _startStreamAnimation() {
    _streamTimer = Timer.periodic(const Duration(milliseconds: 800), (timer) {
      if (mounted) {
        setState(() {
          _streamData.add(
            StreamData(
              id: DateTime.now().millisecondsSinceEpoch,
              value: math.Random().nextInt(100),
            ),
          );
          if (_streamData.length > 5) {
            _streamData.removeAt(0);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _flowController.dispose();
    _streamTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background with gradient
          Container(
            decoration: const BoxDecoration(
              gradient: AppGradients.royalBackground,
            ),
          ),

          // Particle Effect Layer
          const Positioned.fill(
            child: ParticleEffect(
              particleCount: 40,
              particleColor: Colors.white,
              minSize: 2,
              maxSize: 5,
            ),
          ),

          // Floating Shapes Layer
          Positioned.fill(
            child: FloatingShapes(
              color: Colors.white.withOpacity(0.1),
              shapeCount: 6,
            ),
          ),

          // Main Content
          SafeArea(
            child: Column(
              children: [
                // Custom AppBar
                _buildAppBar(),

                // TabBar
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    labelColor: AppColors.primaryViolet,
                    unselectedLabelColor: Colors.white,
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    tabs: const [
                      Tab(text: 'Overview'),
                      Tab(text: 'Theory'),
                      Tab(text: 'Practice'),
                    ],
                  ),
                ),

                // TabBar View
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildOverviewTab(),
                      _buildTheoryTab(),
                      _buildPracticeTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lesson 1',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Stream & Async Programming',
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ],
            ),
          ),
          // Animated Stream Icon
          AnimatedBuilder(
            animation: _flowController,
            builder: (context, child) {
              return Transform.rotate(
                angle: _flowController.value * 2 * math.pi,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.stream,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewTab() {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          setState(() {
            _scrollOffset = notification.metrics.pixels;
          });
        }
        return false;
      },
      child: Stack(
        children: [
          // Parallax Background Layer
          Positioned(
            top: -_scrollOffset * 0.3,
            left: -50,
            child: Opacity(
              opacity: 0.15,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100 - _scrollOffset * 0.5,
            right: -80,
            child: Opacity(
              opacity: 0.1,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.2),
                ),
              ),
            ),
          ),

          // Scrollable Content
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Live Stream Visualization
                _buildStreamVisualization(),
                const SizedBox(height: 24),

                // Module Info
                _buildModuleInfo(),
                const SizedBox(height: 24),

                // Learning Objectives
                _buildLearningObjectives(),
                const SizedBox(height: 24),

                // Quick Stats
                _buildQuickStats(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreamVisualization() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.primaryViolet, AppColors.primaryPurple],
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.waves, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 12),
              const Text(
                'Live Stream Demo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.success.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: AppColors.success,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Active',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.success,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Stream Flow Animation
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _streamData.map((data) {
                return TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 600),
                  tween: Tween(begin: 0.0, end: 1.0),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: Opacity(
                        opacity: value,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.primaryViolet.withOpacity(0.8),
                                AppColors.primaryPurple.withOpacity(0.8),
                              ],
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primaryViolet.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              '${data.value}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 16),
          Text(
            'Data streaming every 0.8 seconds',
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildModuleInfo() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About This Lesson',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Asynchronous programming is a paradigm that allows programs to execute operations without waiting for previous operations to complete. This enables responsive UIs and efficient resource usage.',
            style: TextStyle(
              fontSize: 15,
              color: AppColors.textMuted,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildInfoChip(Icons.timer, '30 min'),
                const SizedBox(width: 12),
                _buildInfoChip(Icons.code, '2 exercises'),
                const SizedBox(width: 12),
                _buildInfoChip(Icons.star, 'Beginner'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: AppColors.primaryViolet),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.textMuted,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLearningObjectives() {
    final objectives = [
      'Understand asynchronous programming concepts',
      'Learn Stream and Future in Dart',
      'Implement async/await pattern',
      'Manage state with StreamBuilder',
    ];

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Learning Objectives',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 16),
          ...objectives.asMap().entries.map((entry) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.primaryViolet,
                            AppColors.primaryPurple,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '${entry.key + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        entry.value,
                        style: const TextStyle(
                          fontSize: 15,
                          color: AppColors.textMuted,
                          height: 1.5,
                        ),
                        overflow: TextOverflow.visible,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildQuickStats() {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            'Topics',
            '4',
            Icons.topic,
            AppColors.primaryViolet,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            'Examples',
            '8',
            Icons.code,
            AppColors.accentPink,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            'Exercises',
            '2',
            Icons.assignment,
            AppColors.accentTeal,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: AppColors.textLight),
          ),
        ],
      ),
    );
  }

  Widget _buildTheoryTab() {
    return Stack(
      children: [
        // Wave Effect at the top
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: WaveEffect(
            color1: Colors.white,
            color2: Colors.white,
            height: 120,
            waveCount: 2,
          ),
        ),

        // Theory Content
        const TheoryTabContent(),
      ],
    );
  }

  Widget _buildPracticeTab() {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          setState(() {
            _scrollOffset = notification.metrics.pixels;
          });
        }
        return false;
      },
      child: Stack(
        children: [
          // Parallax decorative elements
          Positioned(
            top: 50 - _scrollOffset * 0.4,
            right: 20,
            child: const Opacity(
              opacity: 0.1,
              child: Icon(Icons.code, size: 120, color: Colors.white),
            ),
          ),
          Positioned(
            top: 200 - _scrollOffset * 0.6,
            left: 20,
            child: const Opacity(
              opacity: 0.08,
              child: Icon(Icons.school, size: 100, color: Colors.white),
            ),
          ),

          // Practice Content
          PracticeTabContent(
            onExerciseTap: (int index) {
              if (index == 0) {
                Navigator.push(
                  context,
                  _createRoute(const CircularProgressExercise()),
                );
              } else {
                Navigator.push(
                  context,
                  _createRoute(const ContactListExercise()),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOutCubic;
        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
      transitionDuration: const Duration(milliseconds: 400),
    );
  }
}

// Stream Data Model
class StreamData {
  final int id;
  final int value;

  StreamData({required this.id, required this.value});
}

// Theory Tab Content
class TheoryTabContent extends StatefulWidget {
  const TheoryTabContent({super.key});

  @override
  State<TheoryTabContent> createState() => _TheoryTabContentState();
}

class _TheoryTabContentState extends State<TheoryTabContent> {
  int? _expandedIndex;

  final List<TheoryTopic> _topics = [
    TheoryTopic(
      title: 'What is Asynchronous?',
      icon: Icons.help_outline,
      color: AppColors.primaryViolet,
      content:
          '''Asynchronous programming allows programs to continue execution without waiting for time-consuming operations to complete.

Examples of async operations:
• Network requests (HTTP calls)
• File I/O operations
• Database queries
• Timers and delayed operations

Benefits:
✓ UI remains responsive
✓ Efficient resource usage
✓ Better user experience''',
    ),
    TheoryTopic(
      title: 'Future in Dart',
      icon: Icons.access_time,
      color: AppColors.accentPink,
      content:
          '''Future represents a value that will be available in the future.

Future has 3 states:
1. Uncompleted - operation still running
2. Completed with data - success
3. Completed with error - failure

How to use:
• await to wait for result
• then() for callbacks
• catchError() for error handling
• FutureBuilder for UI''',
    ),
    TheoryTopic(
      title: 'Stream in Dart',
      icon: Icons.stream,
      color: AppColors.accentTeal,
      content: '''Stream is a sequence of asynchronous events.

Stream vs Future:
• Future: single value
• Stream: multiple values over time

Types of Stream:
1. Single-subscription stream
2. Broadcast stream

How to use:
• listen() to subscribe
• StreamBuilder for UI
• Stream transformers (map, where, etc)
• StreamController for manual control''',
    ),
    TheoryTopic(
      title: 'Async/Await Pattern',
      icon: Icons.code,
      color: AppColors.accentRose,
      content: '''The async and await keywords make async code more readable.

Syntax:
Future<Type> functionName() async {
  var result = await someAsyncOperation();
  return result;
}

Best Practices:
✓ Use await only in async functions
✓ Handle errors with try-catch
✓ Avoid nested callbacks (callback hell)
✓ Use async/await for sequential operations
✓ Use Future.wait() for parallel operations''',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: _topics.asMap().entries.map((entry) {
          final index = entry.key;
          final topic = entry.value;
          final isExpanded = _expandedIndex == index;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.only(bottom: 12),
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _expandedIndex = isExpanded ? null : index;
                  });
                },
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: topic.color.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              topic.icon,
                              color: topic.color,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              topic.title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textDark,
                              ),
                            ),
                          ),
                          AnimatedRotation(
                            duration: const Duration(milliseconds: 300),
                            turns: isExpanded ? 0.5 : 0,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      AnimatedCrossFade(
                        firstChild: const SizedBox.shrink(),
                        secondChild: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            topic.content,
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.textMuted,
                              height: 1.6,
                            ),
                          ),
                        ),
                        crossFadeState: isExpanded
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class TheoryTopic {
  final String title;
  final IconData icon;
  final Color color;
  final String content;

  TheoryTopic({
    required this.title,
    required this.icon,
    required this.color,
    required this.content,
  });
}

// Practice Tab Content
class PracticeTabContent extends StatelessWidget {
  final Function(int) onExerciseTap;

  const PracticeTabContent({super.key, required this.onExerciseTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hands-on Exercises',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Practice what you learned with interactive coding challenges',
            style: TextStyle(fontSize: 14, color: Colors.white70),
          ),
          const SizedBox(height: 24),

          _ExerciseCard(
            number: '01',
            title: 'Stream Controller',
            subtitle: 'Circular Progress with Stream',
            description:
                'Build a CircularProgressIndicator connected to a Stream. Use play/pause controls to manage data flow from 0% to 100%.',
            difficulty: 'Easy',
            duration: '15 min',
            concepts: const ['StreamController', 'Timer', 'StreamBuilder'],
            gradient: const LinearGradient(
              colors: [AppColors.primaryViolet, AppColors.primaryPurple],
            ),
            onTap: () => onExerciseTap(0),
          ),

          const SizedBox(height: 16),

          _ExerciseCard(
            number: '02',
            title: 'Future Builder',
            subtitle: 'Async Contact List',
            description:
                'Display a ListView of contacts fetched via Future. Implement elegant loading states, refresh functionality, and error handling.',
            difficulty: 'Medium',
            duration: '20 min',
            concepts: const ['FutureBuilder', 'ListView', 'Error Handling'],
            gradient: const LinearGradient(
              colors: [AppColors.accentPink, AppColors.accentRose],
            ),
            onTap: () => onExerciseTap(1),
          ),
        ],
      ),
    );
  }
}

class _ExerciseCard extends StatefulWidget {
  final String number;
  final String title;
  final String subtitle;
  final String description;
  final String difficulty;
  final String duration;
  final List<String> concepts;
  final Gradient gradient;
  final VoidCallback onTap;

  const _ExerciseCard({
    required this.number,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.difficulty,
    required this.duration,
    required this.concepts,
    required this.gradient,
    required this.onTap,
  });

  @override
  State<_ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<_ExerciseCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        transform: Matrix4.identity()..scale(_isPressed ? 0.97 : 1.0),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(_isPressed ? 0.1 : 0.15),
                blurRadius: _isPressed ? 10 : 20,
                offset: Offset(0, _isPressed ? 5 : 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: widget.gradient,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                      child: Text(
                        widget.number,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textLight,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.subtitle,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceLight,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: AppColors.textLight,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.textLight,
                  height: 1.5,
                ),
                overflow: TextOverflow.visible,
                softWrap: true,
                maxLines: null,
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  _buildBadge(
                    Icons.signal_cellular_alt,
                    widget.difficulty,
                    widget.difficulty == 'Easy'
                        ? AppColors.success
                        : AppColors.warning,
                  ),
                  _buildBadge(
                    Icons.access_time,
                    widget.duration,
                    AppColors.info,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: widget.concepts.map((concept) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceLight,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      concept,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textMuted,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBadge(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
