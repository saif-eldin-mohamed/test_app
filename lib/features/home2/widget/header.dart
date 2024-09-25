import 'package:alertopia_app/features/home/ui/home_screen.dart';
import 'package:alertopia_app/features/home2/widget/action_buttons.dart';
import 'package:alertopia_app/features/home2/widget/service_details_card.dart';
import 'package:flutter/material.dart';

class Step2 extends StatelessWidget {
  final VoidCallback onPrevious;

  Step2({required this.onPrevious});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "price Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ServiceDetailsCard(),
          Spacer(),
          ActionButtons(onPrevious: onPrevious),
        ],
      ),
    );
  }
}
