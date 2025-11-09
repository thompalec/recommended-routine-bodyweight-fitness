import 'package:flutter/foundation.dart';
import '../models/workout.dart';
import '../models/exercise.dart';
import '../models/exercise_set.dart';
import '../data/workout_data.dart';
import '../data/exercise_progressions.dart';
import '../data/storage/workout_storage.dart';
import '../data/storage/preferences_storage.dart';

class WorkoutProvider with ChangeNotifier {
  final WorkoutStorage _workoutStorage = WorkoutStorage();
  final PreferencesStorage _preferencesStorage = PreferencesStorage();

  Workout? _currentWorkout;
  List<Map<String, dynamic>> _workoutSequence = [];
  int _currentExerciseIndex = 0;
  bool _isLoading = false;

  // Getters
  Workout? get currentWorkout => _currentWorkout;
  bool get isLoading => _isLoading;
  bool get isWorkoutFinished => _currentWorkout?.isCompleted ?? false;

  Exercise? get currentExercise {
    if (_currentExerciseIndex < _workoutSequence.length) {
      return _workoutSequence[_currentExerciseIndex]['data'] as Exercise?;
    }
    return null;
  }

  ExerciseSet? get currentExerciseSet {
    if (_currentWorkout != null &&
        _currentExerciseIndex < _currentWorkout!.exercises.length) {
      return _currentWorkout!.exercises[_currentExerciseIndex];
    }
    return null;
  }

  int? get currentSetNumber {
    if (_currentExerciseIndex < _workoutSequence.length) {
      return _workoutSequence[_currentExerciseIndex]['setNumber'];
    }
    return null;
  }

  int get currentRestDuration {
    if (_currentExerciseIndex < _workoutSequence.length) {
      return _workoutSequence[_currentExerciseIndex]['restAfter'] as int? ?? 0;
    }
    return 0;
  }

  // Start a new workout
  Future<void> startWorkout() async {
    _isLoading = true;
    notifyListeners();

    try {
      // Get workout sequence
      _workoutSequence = WorkoutData.getWorkoutSequence();

      // Load previous workout preferences
      final preferences = await _preferencesStorage.loadLastWorkoutPreferences();

      // Create exercise sets with default or previous values
      List<ExerciseSet> exercises = [];
      for (var item in _workoutSequence) {
        final exercise = item['data'] as Exercise;

        // Get last used level and reps, or use defaults
        final lastLevel = preferences[exercise.id]?['level'] ?? 0;
        final lastReps =
            preferences[exercise.id]?['reps'] ?? exercise.defaultValue;

        // Get progression info
        final progression =
            ExerciseProgressions.getProgressionForExercise(exercise.id);
        final progressionLevel =
            progression?.getLevelByIndex(lastLevel) ?? null;

        exercises.add(ExerciseSet(
          exerciseId: exercise.id,
          exerciseName: exercise.name,
          progressionLevel: lastLevel,
          progressionName: progressionLevel?.name ?? exercise.name,
          value: lastReps,
          isCompleted: false,
        ));
      }

      _currentWorkout = Workout(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        startTime: DateTime.now(),
        exercises: exercises,
        isCompleted: false,
      );

      _currentExerciseIndex = 0;
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  // Update the current exercise value (reps or time)
  void updateCurrentExerciseValue(int value) {
    if (_currentWorkout != null &&
        _currentExerciseIndex < _currentWorkout!.exercises.length) {
      final updatedSet =
          _currentWorkout!.exercises[_currentExerciseIndex].copyWith(
        value: value,
      );
      _currentWorkout!.exercises[_currentExerciseIndex] = updatedSet;
      notifyListeners();
    }
  }

  // Update progression level for current exercise
  void updateProgressionLevel(int level) {
    if (_currentWorkout != null &&
        _currentExerciseIndex < _currentWorkout!.exercises.length) {
      final exercise = currentExercise;
      if (exercise == null) return;

      final progression =
          ExerciseProgressions.getProgressionForExercise(exercise.id);
      final progressionLevel = progression?.getLevelByIndex(level);

      if (progressionLevel != null) {
        final updatedSet =
            _currentWorkout!.exercises[_currentExerciseIndex].copyWith(
          progressionLevel: level,
          progressionName: progressionLevel.name,
        );
        _currentWorkout!.exercises[_currentExerciseIndex] = updatedSet;
        notifyListeners();
      }
    }
  }

  // Complete the current exercise
  void completeCurrentExercise() {
    if (_currentWorkout != null &&
        _currentExerciseIndex < _currentWorkout!.exercises.length) {
      // Mark exercise as completed
      final updatedSet =
          _currentWorkout!.exercises[_currentExerciseIndex].copyWith(
        isCompleted: true,
        completedAt: DateTime.now(),
      );
      _currentWorkout!.exercises[_currentExerciseIndex] = updatedSet;

      // Check if this is the last exercise
      if (_currentExerciseIndex == _workoutSequence.length - 1) {
        _finishWorkout();
      } else {
        _moveToNextExercise();
      }

      notifyListeners();
    }
  }

  // Move to next exercise
  void _moveToNextExercise() {
    if (_currentExerciseIndex < _workoutSequence.length - 1) {
      _currentExerciseIndex++;
      notifyListeners();
    }
  }

  // Navigate forward (preview mode)
  void goToNextExercise() {
    if (_currentExerciseIndex < _workoutSequence.length - 1) {
      _currentExerciseIndex++;
      notifyListeners();
    }
  }

  // Navigate backward
  void goToPreviousExercise() {
    if (_currentExerciseIndex > 0) {
      _currentExerciseIndex--;
      notifyListeners();
    }
  }

  // Check if can go back
  bool canGoBack() {
    return _currentExerciseIndex > 0;
  }

  // Check if can go forward
  bool canGoForward() {
    return _currentExerciseIndex < _workoutSequence.length - 1;
  }

  // Check if this is the last exercise
  bool isLastExercise() {
    return _currentExerciseIndex == _workoutSequence.length - 1;
  }

  // Finish workout
  Future<void> _finishWorkout() async {
    if (_currentWorkout != null) {
      // Update workout
      _currentWorkout = _currentWorkout!.copyWith(
        endTime: DateTime.now(),
        isCompleted: true,
      );

      // Save workout to history
      await _workoutStorage.addWorkout(_currentWorkout!);

      // Save preferences for next workout
      Map<String, Map<String, int>> preferences = {};
      for (var exerciseSet in _currentWorkout!.exercises) {
        preferences[exerciseSet.exerciseId] = {
          'level': exerciseSet.progressionLevel,
          'reps': exerciseSet.value,
        };
      }
      await _preferencesStorage.saveLastWorkoutPreferences(preferences);

      notifyListeners();
    }
  }
}
