import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier {
  bool _soundEnabled = true;
  bool _vibrationEnabled = true;
  int _restTimerDuration = 90; // Default rest duration in seconds

  // Getters
  bool get soundEnabled => _soundEnabled;
  bool get vibrationEnabled => _vibrationEnabled;
  int get restTimerDuration => _restTimerDuration;

  // Load settings from storage
  Future<void> loadSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      _soundEnabled = prefs.getBool('sound_enabled') ?? true;
      _vibrationEnabled = prefs.getBool('vibration_enabled') ?? true;
      _restTimerDuration = prefs.getInt('rest_timer_duration') ?? 90;
      notifyListeners();
    } catch (e) {
      // Handle error silently, use defaults
    }
  }

  // Toggle sound
  Future<void> toggleSound(bool enabled) async {
    _soundEnabled = enabled;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('sound_enabled', enabled);
    } catch (e) {
      // Handle error
    }
  }

  // Toggle vibration
  Future<void> toggleVibration(bool enabled) async {
    _vibrationEnabled = enabled;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('vibration_enabled', enabled);
    } catch (e) {
      // Handle error
    }
  }

  // Update rest timer duration
  Future<void> updateRestTimerDuration(int duration) async {
    _restTimerDuration = duration;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('rest_timer_duration', duration);
    } catch (e) {
      // Handle error
    }
  }
}
