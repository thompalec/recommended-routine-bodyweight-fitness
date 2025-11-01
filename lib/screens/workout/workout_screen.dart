import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/workout_provider.dart';
import 'exercise_screen.dart';
import 'rest_timer_screen.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  void initState() {
    super.initState();
    // Initialize workout when screen loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<WorkoutProvider>(context, listen: false).startWorkout();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutProvider>(
      builder: (context, workoutProvider, child) {
        if (workoutProvider.isLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        // Show rest timer or exercise based on current state
        if (workoutProvider.isResting) {
          return RestTimerScreen(
            duration: workoutProvider.restDuration,
            onComplete: () => workoutProvider.completeRest(),
            onSkip: () => workoutProvider.skipRest(),
          );
        }

        return const ExerciseScreen();
      },
    );
  }
}
