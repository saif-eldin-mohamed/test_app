// Action Buttons for Step2 (Previous and Book)
import 'package:alertopia_app/features/home/ui/home_screen.dart';
import 'package:alertopia_app/features/home2/home2_screen.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onPrevious;

  ActionButtons({required this.onPrevious});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton2(
            text: "Previous",
            onPressed: () {
              Navigator.of(context).pop();
            }),
        CustomButton(
          text: "Book",
          onPressed: () {
            // Booking logic goes here
          },
        ),
      ],
    );
  }
}
