import 'package:flutter/material.dart';

class NavigationControls extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback onDone;
  final VoidCallback? onForward;
  final bool isDone;
  final bool isLastExercise;

  const NavigationControls({
    Key? key,
    required this.onBack,
    required this.onDone,
    required this.onForward,
    required this.isDone,
    required this.isLastExercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Back button
          IconButton(
            onPressed: onBack,
            icon: const Icon(Icons.arrow_back),
            iconSize: 32,
            tooltip: 'Previous Exercise',
          ),

          // Done/Finish button
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: isDone ? null : onDone,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: isDone ? Colors.grey : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  isLastExercise ? 'Finish Workout' : 'Done',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // Forward button
          IconButton(
            onPressed: onForward,
            icon: const Icon(Icons.arrow_forward),
            iconSize: 32,
            tooltip: 'Next Exercise',
          ),
        ],
      ),
    );
  }
}
