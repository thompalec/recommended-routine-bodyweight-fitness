import 'package:flutter/material.dart';
import '../../widgets/workout/rest_timer.dart';

class RestTimerScreen extends StatelessWidget {
  final int duration; // Duration in seconds
  final VoidCallback onComplete;
  final VoidCallback onSkip;

  const RestTimerScreen({
    Key? key,
    required this.duration,
    required this.onComplete,
    required this.onSkip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest Period'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rest Time',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 32),
              RestTimer(
                duration: duration,
                onComplete: onComplete,
              ),
              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: onSkip,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Text('Skip Rest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
