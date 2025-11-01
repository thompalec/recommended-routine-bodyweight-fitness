class ExerciseSet {
  final String exerciseId;
  final String exerciseName;
  final int progressionLevel;
  final String progressionName;
  final int value; // reps or seconds
  final bool isCompleted;
  final DateTime? completedAt;

  ExerciseSet({
    required this.exerciseId,
    required this.exerciseName,
    required this.progressionLevel,
    required this.progressionName,
    required this.value,
    this.isCompleted = false,
    this.completedAt,
  });

  ExerciseSet copyWith({
    String? exerciseId,
    String? exerciseName,
    int? progressionLevel,
    String? progressionName,
    int? value,
    bool? isCompleted,
    DateTime? completedAt,
  }) {
    return ExerciseSet(
      exerciseId: exerciseId ?? this.exerciseId,
      exerciseName: exerciseName ?? this.exerciseName,
      progressionLevel: progressionLevel ?? this.progressionLevel,
      progressionName: progressionName ?? this.progressionName,
      value: value ?? this.value,
      isCompleted: isCompleted ?? this.isCompleted,
      completedAt: completedAt ?? this.completedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'exerciseId': exerciseId,
      'exerciseName': exerciseName,
      'progressionLevel': progressionLevel,
      'progressionName': progressionName,
      'value': value,
      'isCompleted': isCompleted,
      'completedAt': completedAt?.toIso8601String(),
    };
  }

  factory ExerciseSet.fromJson(Map<String, dynamic> json) {
    return ExerciseSet(
      exerciseId: json['exerciseId'],
      exerciseName: json['exerciseName'],
      progressionLevel: json['progressionLevel'],
      progressionName: json['progressionName'],
      value: json['value'],
      isCompleted: json['isCompleted'] ?? false,
      completedAt: json['completedAt'] != null
          ? DateTime.parse(json['completedAt'])
          : null,
    );
  }
}
