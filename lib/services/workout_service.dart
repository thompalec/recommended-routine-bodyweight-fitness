import '../models/workout.dart';
import '../models/exercise.dart';
import '../models/exercise_set.dart';
import '../data/workout_data.dart';

class WorkoutService {
  // Calculate total workout time
  static Duration? calculateWorkoutDuration(Workout workout) {
    return workout.duration;
  }

  // Get workout statistics
  static Map<String, dynamic> getWorkoutStats(Workout workout) {
    int totalExercises = workout.exercises.length;
    int completedExercises =
        workout.exercises.where((e) => e.isCompleted).length;
    Duration? duration = workout.duration;

    return {
      'totalExercises': totalExercises,
      'completedExercises': completedExercises,
      'duration': duration,
      'completionRate':
          totalExercises > 0 ? completedExercises / totalExercises : 0.0,
    };
  }

  // Get exercise by ID
  static Exercise? getExerciseById(String exerciseId) {
    final allExercises = WorkoutData.getAllExercisesInOrder();
    try {
      return allExercises.firstWhere((ex) => ex.id == exerciseId);
    } catch (e) {
      return null;
    }
  }

  // Validate workout completion
  static bool isWorkoutComplete(Workout workout) {
    return workout.exercises.every((exercise) => exercise.isCompleted);
  }

  // Get total reps/time for workout
  static Map<String, int> getTotalVolume(Workout workout) {
    int totalReps = 0;
    int totalTime = 0;

    for (var exerciseSet in workout.exercises) {
      final exercise = getExerciseById(exerciseSet.exerciseId);
      if (exercise != null) {
        if (exercise.isReps) {
          totalReps += exerciseSet.value;
        } else {
          totalTime += exerciseSet.value;
        }
      }
    }

    return {
      'totalReps': totalReps,
      'totalTime': totalTime,
    };
  }
}
