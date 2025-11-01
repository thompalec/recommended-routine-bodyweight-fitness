class Exercise {
  final String id;
  final String name;
  final String category; // 'warmup', 'strength', 'core'
  final List<String> progressionLevels;
  final String gifPath;
  final String? comments;
  final bool isReps; // true for reps, false for time
  final int defaultValue; // default reps or seconds

  Exercise({
    required this.id,
    required this.name,
    required this.category,
    required this.progressionLevels,
    required this.gifPath,
    this.comments,
    required this.isReps,
    required this.defaultValue,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'progressionLevels': progressionLevels,
      'gifPath': gifPath,
      'comments': comments,
      'isReps': isReps,
      'defaultValue': defaultValue,
    };
  }

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      progressionLevels: List<String>.from(json['progressionLevels']),
      gifPath: json['gifPath'],
      comments: json['comments'],
      isReps: json['isReps'],
      defaultValue: json['defaultValue'],
    );
  }
}
