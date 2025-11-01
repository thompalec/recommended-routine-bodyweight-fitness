import 'package:flutter/material.dart';

class AppConstants {
  // App Info
  static const String appName = 'Overcoming Gravity';
  static const String appSubtitle = 'Bodyweight Fitness Recommended Routine';
  static const String appVersion = '1.0.0';

  // Rest Durations (in seconds)
  static const int strengthRestDuration = 90;
  static const int coreRestDuration = 60;

  // Default Exercise Values
  static const int defaultReps = 5;
  static const int defaultTime = 30;

  // Rep/Time limits
  static const int maxReps = 20;
  static const int maxTime = 120;

  // Colors
  static const Color primaryColor = Colors.blue;
  static const Color secondaryColor = Colors.blueAccent;
  static const Color accentColor = Colors.orange;
  static const Color backgroundColor = Colors.white;

  // Padding/Margins
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;

  // Border Radius
  static const double defaultBorderRadius = 12.0;
  static const double smallBorderRadius = 8.0;
  static const double largeBorderRadius = 16.0;

  // Animation Durations
  static const Duration shortAnimationDuration = Duration(milliseconds: 200);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 300);
  static const Duration longAnimationDuration = Duration(milliseconds: 500);
}
