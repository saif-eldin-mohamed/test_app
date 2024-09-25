import 'package:alertopia_app/core/theming/colors.dart';
import 'package:alertopia_app/core/theming/styles.dart';
import 'package:alertopia_app/features/home/ui/widget/date_and_descrption.dart';
import 'package:alertopia_app/features/home/ui/widget/header.dart';
import 'package:alertopia_app/features/home/ui/widget/step_indicator.dart';
import 'package:alertopia_app/features/home2/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Booking2ServicePage extends StatefulWidget {
  const Booking2ServicePage({Key? key}) : super(key: key);

  @override
  _Booking2ServicePageState createState() => _Booking2ServicePageState();
}

class _Booking2ServicePageState extends State<Booking2ServicePage> {
  int _currentPage = 0;
  int _selectedNumber = 1;

  void _incrementNumber() {
    setState(() {
      _selectedNumber++;
    });
  }

  void _decrementNumber() {
    setState(() {
      if (_selectedNumber > 1) {
        _selectedNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Headerwidget(),
            SizedBox(height: 20.h),
            StepIndicator(currentStep: _currentPage + 1),
            SizedBox(height: 20.h),
            Container(
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      'Apartment cleaning',
                      style:
                          TextThemes.font14Black900RegularMontserrat.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      height: 40.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: _decrementNumber,
                            child: Icon(Icons.remove, size: 20.sp),
                          ),
                          Text(
                            _selectedNumber.toString(),
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: _incrementNumber,
                            child: Icon(Icons.add, size: 20.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Step2(onPrevious: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.blueA400,
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton2({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.white,
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
