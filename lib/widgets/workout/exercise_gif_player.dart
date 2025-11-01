import 'package:flutter/material.dart';
import '../../data/exercise_progressions.dart';

class ExerciseGifPlayer extends StatelessWidget {
  final String gifPath;
  final String exerciseId;

  const ExerciseGifPlayer({
    Key? key,
    required this.gifPath,
    required this.exerciseId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the actual gif path from progressions if available
    final progression = ExerciseProgressions.getProgressionForExercise(exerciseId);
    String actualGifPath = gifPath;

    // Try to find matching progression level
    if (progression != null) {
      final matchingLevel = progression.levels.firstWhere(
        (level) => level.name == gifPath,
        orElse: () => progression.levels.first,
      );
      actualGifPath = matchingLevel.gifPath;
    }

    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            actualGifPath,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fitness_center,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Exercise GIF',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'GIF not found: $actualGifPath',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
