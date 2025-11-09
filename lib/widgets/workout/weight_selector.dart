import 'package:flutter/material.dart';

class WeightSelector extends StatelessWidget {
  final double currentWeight;
  final Function(double) onWeightChanged;

  const WeightSelector({
    Key? key,
    required this.currentWeight,
    required this.onWeightChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Weight',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                if (currentWeight > 0) {
                  onWeightChanged((currentWeight - 2.5).clamp(0, 500));
                }
              },
              icon: const Icon(Icons.remove_circle),
              iconSize: 32,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${currentWeight.toStringAsFixed(1)} lbs',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            IconButton(
              onPressed: () {
                onWeightChanged((currentWeight + 2.5).clamp(0, 500));
              },
              icon: const Icon(Icons.add_circle),
              iconSize: 32,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Slider(
          value: currentWeight,
          min: 0,
          max: 200,
          divisions: 80,
          label: '${currentWeight.toStringAsFixed(1)} lbs',
          onChanged: onWeightChanged,
        ),
      ],
    );
  }
}
