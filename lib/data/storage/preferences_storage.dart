import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class PreferencesStorage {
  static const String _lastWorkoutKey = 'last_workout_preferences';

  // Save last workout preferences (progression levels and reps for each exercise)
  Future<void> saveLastWorkoutPreferences(
      Map<String, Map<String, int>> preferences) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = jsonEncode(preferences);
      await prefs.setString(_lastWorkoutKey, jsonString);
    } catch (e) {
      throw Exception('Failed to save workout preferences: $e');
    }
  }

  // Load last workout preferences
  // Returns map like: {'exercise_id': {'level': 2, 'reps': 8}}
  Future<Map<String, Map<String, int>>> loadLastWorkoutPreferences() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString(_lastWorkoutKey);

      if (jsonString == null) {
        return {};
      }

      final decoded = jsonDecode(jsonString) as Map<String, dynamic>;
      return decoded.map(
        (key, value) => MapEntry(
          key,
          (value as Map<String, dynamic>).map(
            (k, v) => MapEntry(k, v as int),
          ),
        ),
      );
    } catch (e) {
      throw Exception('Failed to load workout preferences: $e');
    }
  }

  // Save progression level for specific exercise
  Future<void> saveExerciseLevel(String exerciseId, int level) async {
    try {
      final preferences = await loadLastWorkoutPreferences();
      if (!preferences.containsKey(exerciseId)) {
        preferences[exerciseId] = {};
      }
      preferences[exerciseId]!['level'] = level;
      await saveLastWorkoutPreferences(preferences);
    } catch (e) {
      throw Exception('Failed to save exercise level: $e');
    }
  }

  // Save reps for specific exercise
  Future<void> saveExerciseReps(String exerciseId, int reps) async {
    try {
      final preferences = await loadLastWorkoutPreferences();
      if (!preferences.containsKey(exerciseId)) {
        preferences[exerciseId] = {};
      }
      preferences[exerciseId]!['reps'] = reps;
      await saveLastWorkoutPreferences(preferences);
    } catch (e) {
      throw Exception('Failed to save exercise reps: $e');
    }
  }

  // Get last level for exercise (returns null if not found)
  Future<int?> getExerciseLevel(String exerciseId) async {
    try {
      final preferences = await loadLastWorkoutPreferences();
      return preferences[exerciseId]?['level'];
    } catch (e) {
      return null;
    }
  }

  // Get last reps for exercise (returns null if not found)
  Future<int?> getExerciseReps(String exerciseId) async {
    try {
      final preferences = await loadLastWorkoutPreferences();
      return preferences[exerciseId]?['reps'];
    } catch (e) {
      return null;
    }
  }

  // Clear all preferences
  Future<void> clearPreferences() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_lastWorkoutKey);
    } catch (e) {
      throw Exception('Failed to clear preferences: $e');
    }
  }
}
