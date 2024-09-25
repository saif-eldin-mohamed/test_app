import 'package:alertopia_app/core/theming/colors.dart';
import 'package:alertopia_app/core/theming/styles.dart';
import 'package:alertopia_app/features/home/ui/widget/date_and_descrption.dart';
import 'package:alertopia_app/features/home/ui/widget/header.dart';
import 'package:alertopia_app/features/home/ui/widget/step_indicator.dart';
import 'package:alertopia_app/features/home2/home2_screen.dart';
import 'package:alertopia_app/features/home2/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingServicePage extends StatelessWidget {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Headerwidget(),
            SizedBox(height: 20.h),
            StepIndicator(currentStep: _currentPage + 1),
            Expanded(
                child: SingleChildScrollView(
                    child: DateAndDescription(onNext: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Booking2ServicePage()),
                    );}))),
          
          ],
        ),
      ),
    );
  }
}
