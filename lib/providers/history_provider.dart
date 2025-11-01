import 'package:flutter/foundation.dart';
import '../models/workout.dart';
import '../models/workout_history.dart';
import '../data/storage/workout_storage.dart';

class HistoryProvider with ChangeNotifier {
  final WorkoutStorage _workoutStorage = WorkoutStorage();

  WorkoutHistory? _workoutHistory;
  bool _isLoading = false;

  // Getters
  bool get isLoading => _isLoading;

  List<Workout> get completedWorkouts {
    return _workoutHistory?.getCompletedWorkouts() ?? [];
  }

  Workout? get lastWorkout {
    return _workoutHistory?.getLastCompletedWorkout();
  }

  // Load workout history
  Future<void> loadHistory() async {
    _isLoading = true;
    notifyListeners();

    try {
      _workoutHistory = await _workoutStorage.loadWorkoutHistory();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  // Clear all history
  Future<void> clearHistory() async {
    try {
      await _workoutStorage.clearHistory();
      _workoutHistory = WorkoutHistory(workouts: []);
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
