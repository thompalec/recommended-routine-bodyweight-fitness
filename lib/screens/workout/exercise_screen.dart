import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart';
import '../../providers/workout_provider.dart';
import '../../widgets/workout/exercise_gif_player.dart';
import '../../widgets/workout/rep_selector.dart';
import '../../widgets/workout/weight_selector.dart';
import '../../widgets/workout/navigation_controls.dart';
import '../../widgets/workout/level_selector_dialog.dart';
import '../../data/exercise_progressions.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  Timer? _timer;
  int _remainingSeconds = 0;
  String? _currentExerciseId;
  bool _hasVibrated = false;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer(int duration) {
    _remainingSeconds = duration;
    _hasVibrated = false;

    _timer?.cancel();

    // Only start timer if duration > 0
    if (duration > 0) {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (mounted) {
          setState(() {
            if (_remainingSeconds > 0) {
              _remainingSeconds--;
            } else {
              // Vibrate when timer reaches 0
              if (!_hasVibrated) {
                _triggerVibration();
                _hasVibrated = true;
              }
              timer.cancel();
            }
          });
        }
      });
    } else {
      // No timer for warmup exercises
      _remainingSeconds = 0;
    }
  }

  Future<void> _triggerVibration() async {
    // Check if device has vibration capability
    bool? hasVibrator = await Vibration.hasVibrator();
    if (hasVibrator == true) {
      Vibration.vibrate(duration: 500); // Vibrate for 500ms
    }
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutProvider>(
      builder: (context, workoutProvider, child) {
        final currentExercise = workoutProvider.currentExercise;
        final currentSet = workoutProvider.currentExerciseSet;
        final restDuration = workoutProvider.currentRestDuration;

        if (currentExercise == null || currentSet == null) {
          return const Scaffold(
            body: Center(
              child: Text('No exercise loaded'),
            ),
          );
        }

        // Create a unique key for this exercise (exercise ID + set number if available)
        final setNumber = workoutProvider.currentSetNumber;
        final exerciseKey = setNumber != null
            ? '${currentExercise.id}_set_$setNumber'
            : currentExercise.id;

        // Start timer when we move to a new exercise
        if (_currentExerciseId != exerciseKey) {
          _currentExerciseId = exerciseKey;
          // Set the remaining seconds immediately to avoid showing 0:00
          _remainingSeconds = restDuration;
          // Then start the timer
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _startTimer(restDuration);
          });
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(currentExercise.name),
            actions: [
              TextButton(
                onPressed: () => _showLevelSelector(context, workoutProvider),
                child: const Text(
                  'Choose Level',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                // Timer display (only show if rest duration > 0)
                if (restDuration > 0)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      _formatTime(_remainingSeconds),
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: _remainingSeconds == 0
                                ? Colors.red
                                : Theme.of(context).primaryColor,
                          ),
                    ),
                  ),

                // Exercise information
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      if (workoutProvider.currentSetNumber != null)
                        Text(
                          'Set ${workoutProvider.currentSetNumber}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      const SizedBox(height: 8),
                      Text(
                        currentSet.progressionName,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      if (currentExercise.comments != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            currentExercise.comments!,
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                    ],
                  ),
                ),

                // Exercise GIF
                Expanded(
                  child: ExerciseGifPlayer(
                    gifPath: currentSet.progressionName,
                    exerciseId: currentExercise.id,
                  ),
                ),

                // Rep/Time selector
                RepSelector(
                  isReps: currentExercise.isReps,
                  currentValue: currentSet.value,
                  onValueChanged: (value) {
                    workoutProvider.updateCurrentExerciseValue(value);
                  },
                ),

                const SizedBox(height: 16),

                // Weight selector (only show if current progression uses weight)
                Builder(
                  builder: (context) {
                    final progression = ExerciseProgressions.getProgressionForExercise(currentExercise.id);
                    final progressionLevel = progression?.getLevelByIndex(currentSet.progressionLevel);

                    if (progressionLevel?.usesWeight == true) {
                      return Column(
                        children: [
                          WeightSelector(
                            currentWeight: currentSet.weight,
                            onWeightChanged: (weight) {
                              workoutProvider.updateCurrentExerciseWeight(weight);
                            },
                          ),
                          const SizedBox(height: 16),
                        ],
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),

                // Navigation controls
                NavigationControls(
                  onBack: workoutProvider.canGoBack()
                      ? () => workoutProvider.goToPreviousExercise()
                      : null,
                  onDone: () => workoutProvider.completeCurrentExercise(),
                  onForward: workoutProvider.canGoForward()
                      ? () => workoutProvider.goToNextExercise()
                      : null,
                  isDone: currentSet.isCompleted,
                  isLastExercise: workoutProvider.isLastExercise(),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showLevelSelector(
      BuildContext context, WorkoutProvider workoutProvider) {
    showDialog(
      context: context,
      builder: (context) => LevelSelectorDialog(
        currentLevel: workoutProvider.currentExerciseSet!.progressionLevel,
        exerciseId: workoutProvider.currentExercise!.id,
        onLevelSelected: (level) {
          workoutProvider.updateProgressionLevel(level);
        },
      ),
    );
  }
}
