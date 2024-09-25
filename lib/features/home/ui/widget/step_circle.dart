// Widget for each step circle
import 'package:alertopia_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

class StepCircle extends StatelessWidget {
  final bool isActive;
  final String stepLabel;

  StepCircle({required this.isActive, required this.stepLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isActive ? ColorsManager.blueA400 : Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
      child: Text(
        stepLabel,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
