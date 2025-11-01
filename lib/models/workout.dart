import 'exercise_set.dart';

class Workout {
  final String id;
  final DateTime startTime;
  final DateTime? endTime;
  final List<ExerciseSet> exercises;
  final bool isCompleted;

  Workout({
    required this.id,
    required this.startTime,
    this.endTime,
    required this.exercises,
    this.isCompleted = false,
  });

  Workout copyWith({
    String? id,
    DateTime? startTime,
    DateTime? endTime,
    List<ExerciseSet>? exercises,
    bool? isCompleted,
  }) {
    return Workout(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      exercises: exercises ?? this.exercises,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Duration? get duration {
    if (endTime != null) {
      return endTime!.difference(startTime);
    }
    return null;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
      'exercises': exercises.map((e) => e.toJson()).toList(),
      'isCompleted': isCompleted,
    };
  }

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'],
      startTime: DateTime.parse(json['startTime']),
      endTime: json['endTime'] != null ? DateTime.parse(json['endTime']) : null,
      exercises: (json['exercises'] as List)
          .map((e) => ExerciseSet.fromJson(e))
          .toList(),
      isCompleted: json['isCompleted'] ?? false,
    );
  }
}
