import 'package:flutter/material.dart';
import '../../data/exercise_progressions.dart';
import '../../models/exercise_progression.dart';

class LevelSelectorDialog extends StatelessWidget {
  final int currentLevel;
  final String exerciseId;
  final Function(int) onLevelSelected;

  const LevelSelectorDialog({
    Key? key,
    required this.currentLevel,
    required this.exerciseId,
    required this.onLevelSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final progression = ExerciseProgressions.getProgressionForExercise(exerciseId);

    if (progression == null) {
      return AlertDialog(
        title: const Text('Level Selection'),
        content: const Text('No progression levels available for this exercise.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      );
    }

    return AlertDialog(
      title: const Text('Choose Level'),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: progression.levels.length,
          itemBuilder: (context, index) {
            final level = progression.levels[index];
            final isSelected = level.level == currentLevel;

            return ListTile(
              leading: CircleAvatar(
                backgroundColor: isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.grey[300],
                child: Text(
                  '${level.level + 1}',
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                level.name,
                style: TextStyle(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              subtitle: Text(level.description),
              selected: isSelected,
              onTap: () {
                onLevelSelected(level.level);
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
