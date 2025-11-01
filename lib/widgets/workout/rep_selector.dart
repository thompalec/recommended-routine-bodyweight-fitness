import 'package:flutter/material.dart';

class RepSelector extends StatelessWidget {
  final bool isReps;
  final int currentValue;
  final Function(int) onValueChanged;

  const RepSelector({
    Key? key,
    required this.isReps,
    required this.currentValue,
    required this.onValueChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Text(
            isReps ? 'Reps' : 'Time (seconds)',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: currentValue > 0
                    ? () => onValueChanged(currentValue - 1)
                    : null,
                icon: const Icon(Icons.remove_circle),
                iconSize: 32,
              ),
              const SizedBox(width: 24),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '$currentValue',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(width: 24),
              IconButton(
                onPressed: () => onValueChanged(currentValue + 1),
                icon: const Icon(Icons.add_circle),
                iconSize: 32,
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Optional: Add slider for finer control
          Slider(
            value: currentValue.toDouble(),
            min: 0,
            max: isReps ? 20 : 120, // Max 20 reps or 120 seconds (2 min)
            divisions: isReps ? 20 : 24, // 5-second increments for time
            label: '$currentValue',
            onChanged: (value) => onValueChanged(value.round()),
          ),
        ],
      ),
    );
  }
}
