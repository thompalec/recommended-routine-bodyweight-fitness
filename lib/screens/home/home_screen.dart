import 'package:flutter/material.dart';
import '../../widgets/home/title_header.dart';
import '../../widgets/home/action_buttons.dart';
import '../../widgets/home/planche_silhouette.dart';
import '../../theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Split background
          Column(
            children: [
              Expanded(
                child: Container(
                  color: AppColors.background,
                ),
              ),
              Expanded(
                child: Container(
                  color: AppColors.accent,
                ),
              ),
            ],
          ),
          // Planche silhouette at the dividing line
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Transform.translate(
                offset: const Offset(0, 0),
                child: const PlancheSilhouette(size: 300),
              ),
            ),
          ),
          // Content on top
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  const TitleHeader(),
                  const Spacer(flex: 3),
                  const ActionButtons(),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
