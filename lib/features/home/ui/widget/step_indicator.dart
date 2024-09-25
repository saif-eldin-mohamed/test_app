// Step Indicator Widget
import 'package:alertopia_app/features/home/ui/widget/line_dotted';
import 'package:alertopia_app/features/home/ui/widget/step_circle.dart';
import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;

  const StepIndicator({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StepCircle(isActive: currentStep >= 1, stepLabel: "01"),
        StepDivider(),
        StepCircle(isActive: currentStep >= 2, stepLabel: "02"),
      ],
    );
  }
}