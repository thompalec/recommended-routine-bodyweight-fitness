import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/workout_provider.dart';
import '../../widgets/workout/exercise_gif_player.dart';
import '../../widgets/workout/rep_selector.dart';
import '../../widgets/workout/navigation_controls.dart';
import '../../widgets/workout/level_selector_dialog.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutProvider>(
      builder: (context, workoutProvider, child) {
        final currentExercise = workoutProvider.currentExercise;
        final currentSet = workoutProvider.currentExerciseSet;

        if (currentExercise == null || currentSet == null) {
          return const Scaffold(
            body: Center(
              child: Text('No exercise loaded'),
            ),
          );
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
