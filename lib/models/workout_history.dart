import 'workout.dart';

class WorkoutHistory {
  final List<Workout> workouts;

  WorkoutHistory({required this.workouts});

  WorkoutHistory copyWith({List<Workout>? workouts}) {
    return WorkoutHistory(
      workouts: workouts ?? this.workouts,
    );
  }

  void addWorkout(Workout workout) {
    workouts.add(workout);
  }

  List<Workout> getCompletedWorkouts() {
    return workouts.where((w) => w.isCompleted).toList()
      ..sort((a, b) => b.startTime.compareTo(a.startTime));
  }

  Workout? getLastCompletedWorkout() {
    final completed = getCompletedWorkouts();
    return completed.isNotEmpty ? completed.first : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'workouts': workouts.map((w) => w.toJson()).toList(),
    };
  }

  factory WorkoutHistory.fromJson(Map<String, dynamic> json) {
    return WorkoutHistory(
      workouts: (json['workouts'] as List)
          .map((w) => Workout.fromJson(w))
          .toList(),
    );
  }
}
