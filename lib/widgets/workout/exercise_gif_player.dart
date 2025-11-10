import 'package:flutter/material.dart';
import '../../data/exercise_progressions.dart';

/// Widget that displays exercise media (GIF or static image).
/// Automatically detects file type based on extension:
/// - .gif: Displays as animated GIF
/// - .png, .jpg, .jpeg, .webp: Displays as static image
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
    // Get the actual media path from progressions if available
    final progression = ExerciseProgressions.getProgressionForExercise(exerciseId);
    String actualMediaPath = gifPath;

    // Try to find matching progression level
    if (progression != null) {
      final matchingLevel = progression.levels.firstWhere(
        (level) => level.name == gifPath,
        orElse: () => progression.levels.first,
      );
      actualMediaPath = matchingLevel.gifPath;
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
            actualMediaPath,
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
                    'Exercise Media',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'Media not found: $actualMediaPath',
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
