import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class PlancheSilhouette extends StatelessWidget {
  final double size;

  const PlancheSilhouette({Key? key, this.size = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size * 0.4),
      painter: PlanchePainter(),
    );
  }
}

class PlanchePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.accent
      ..style = PaintingStyle.fill;

    final path = Path();

    // Scale factors
    final width = size.width;
    final height = size.height;

    // Head (circle)
    final headCenter = Offset(width * 0.25, height * 0.3);
    final headRadius = height * 0.15;
    canvas.drawCircle(headCenter, headRadius, paint);

    // Torso (elongated horizontal shape)
    path.moveTo(width * 0.32, height * 0.35); // Start at neck
    path.lineTo(width * 0.75, height * 0.35); // Top of torso
    path.lineTo(width * 0.80, height * 0.55); // Right side
    path.lineTo(width * 0.30, height * 0.55); // Bottom of torso
    path.close();

    // Left arm (extended forward, supporting)
    final leftArmPath = Path();
    leftArmPath.moveTo(width * 0.32, height * 0.40);
    leftArmPath.lineTo(width * 0.15, height * 0.65);
    leftArmPath.lineTo(width * 0.12, height * 0.70);
    leftArmPath.lineTo(width * 0.08, height * 0.68);
    leftArmPath.lineTo(width * 0.10, height * 0.62);
    leftArmPath.lineTo(width * 0.28, height * 0.42);
    leftArmPath.close();

    // Right arm (extended forward, supporting)
    final rightArmPath = Path();
    rightArmPath.moveTo(width * 0.75, height * 0.40);
    rightArmPath.lineTo(width * 0.58, height * 0.65);
    rightArmPath.lineTo(width * 0.55, height * 0.70);
    rightArmPath.lineTo(width * 0.51, height * 0.68);
    rightArmPath.lineTo(width * 0.53, height * 0.62);
    rightArmPath.lineTo(width * 0.71, height * 0.42);
    rightArmPath.close();

    // Left leg (extended back horizontally)
    final leftLegPath = Path();
    leftLegPath.moveTo(width * 0.45, height * 0.52);
    leftLegPath.lineTo(width * 0.88, height * 0.48);
    leftLegPath.lineTo(width * 0.92, height * 0.52);
    leftLegPath.lineTo(width * 0.92, height * 0.56);
    leftLegPath.lineTo(width * 0.88, height * 0.58);
    leftLegPath.lineTo(width * 0.45, height * 0.58);
    leftLegPath.close();

    // Right leg (extended back horizontally)
    final rightLegPath = Path();
    rightLegPath.moveTo(width * 0.50, height * 0.52);
    rightLegPath.lineTo(width * 0.93, height * 0.44);
    rightLegPath.lineTo(width * 0.97, height * 0.48);
    rightLegPath.lineTo(width * 0.97, height * 0.52);
    rightLegPath.lineTo(width * 0.93, height * 0.54);
    rightLegPath.lineTo(width * 0.50, height * 0.58);
    rightLegPath.close();

    // Draw all parts
    canvas.drawPath(path, paint);
    canvas.drawPath(leftArmPath, paint);
    canvas.drawPath(rightArmPath, paint);
    canvas.drawPath(leftLegPath, paint);
    canvas.drawPath(rightLegPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
