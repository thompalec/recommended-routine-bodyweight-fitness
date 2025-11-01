class ExerciseProgression {
  final String exerciseId;
  final List<ProgressionLevel> levels;

  ExerciseProgression({
    required this.exerciseId,
    required this.levels,
  });

  ProgressionLevel getLevelByIndex(int index) {
    if (index >= 0 && index < levels.length) {
      return levels[index];
    }
    return levels[0]; // Default to first level
  }

  Map<String, dynamic> toJson() {
    return {
      'exerciseId': exerciseId,
      'levels': levels.map((l) => l.toJson()).toList(),
    };
  }

  factory ExerciseProgression.fromJson(Map<String, dynamic> json) {
    return ExerciseProgression(
      exerciseId: json['exerciseId'],
      levels: (json['levels'] as List)
          .map((l) => ProgressionLevel.fromJson(l))
          .toList(),
    );
  }
}

class ProgressionLevel {
  final int level;
  final String name;
  final String description;
  final String gifPath;

  ProgressionLevel({
    required this.level,
    required this.name,
    required this.description,
    required this.gifPath,
  });

  Map<String, dynamic> toJson() {
    return {
      'level': level,
      'name': name,
      'description': description,
      'gifPath': gifPath,
    };
  }

  factory ProgressionLevel.fromJson(Map<String, dynamic> json) {
    return ProgressionLevel(
      level: json['level'],
      name: json['name'],
      description: json['description'],
      gifPath: json['gifPath'],
    );
  }
}
