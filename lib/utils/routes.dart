import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/workout/workout_screen.dart';
import '../screens/history/history_list_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String workout = '/workout';
  static const String history = '/history';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      workout: (context) => const WorkoutScreen(),
      history: (context) => const HistoryListScreen(),
    };
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case workout:
        return MaterialPageRoute(builder: (_) => const WorkoutScreen());
      case history:
        return MaterialPageRoute(builder: (_) => const HistoryListScreen());
      default:
        return null;
    }
  }
}
