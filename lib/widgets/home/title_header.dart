import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              'OVERCOMING',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 55,
                    fontWeight: FontWeight.w900,
                    color: AppColors.accent
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              'GRAVITY',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 86,
                    fontWeight: FontWeight.w900,
                    color: AppColors.accent
              
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'BODYWEIGHT FITNESS RECOMMENDED ROUTINE',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
