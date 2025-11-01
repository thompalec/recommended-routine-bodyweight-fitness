import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import '../../models/workout_history.dart';
import '../../models/workout.dart';

class WorkoutStorage {
  static const String _fileName = 'workout_history.json';

  // Get the app's documents directory
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  // Get reference to the workout history file
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$_fileName');
  }

  // Save workout history to JSON file
  Future<void> saveWorkoutHistory(WorkoutHistory history) async {
    try {
      final file = await _localFile;
      final jsonString = jsonEncode(history.toJson());
      await file.writeAsString(jsonString);
    } catch (e) {
      throw Exception('Failed to save workout history: $e');
    }
  }

  // Load workout history from JSON file
  Future<WorkoutHistory> loadWorkoutHistory() async {
    try {
      final file = await _localFile;

      // If file doesn't exist, return empty history
      if (!await file.exists()) {
        return WorkoutHistory(workouts: []);
      }

      final jsonString = await file.readAsString();
      final jsonData = jsonDecode(jsonString);
      return WorkoutHistory.fromJson(jsonData);
    } catch (e) {
      throw Exception('Failed to load workout history: $e');
    }
  }

  // Add a single workout to history
  Future<void> addWorkout(Workout workout) async {
    try {
      final history = await loadWorkoutHistory();
      history.addWorkout(workout);
      await saveWorkoutHistory(history);
    } catch (e) {
      throw Exception('Failed to add workout: $e');
    }
  }

  // Clear all workout history
  Future<void> clearHistory() async {
    try {
      final file = await _localFile;
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      throw Exception('Failed to clear history: $e');
    }
  }
}
