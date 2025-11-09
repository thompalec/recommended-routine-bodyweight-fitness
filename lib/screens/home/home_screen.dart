import 'package:flutter/material.dart';
import '../../widgets/home/title_header.dart';
import '../../widgets/home/action_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
    );
  }
}
