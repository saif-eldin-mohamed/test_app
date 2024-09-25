import 'package:alertopia_app/core/theming/styles.dart';
import 'package:alertopia_app/core/widgets/app_text_button.dart';
import 'package:alertopia_app/core/widgets/app_text_form_field.dart';
import 'package:alertopia_app/features/home/ui/home_screen.dart';
import 'package:alertopia_app/features/home/ui/widget/upload_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateAndDescription extends StatelessWidget {
  final VoidCallback onNext;

  const DateAndDescription({required this.onNext, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Prevents Column from taking up infinite height
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Detail Information",
            style: TextThemes.font14Black900RegularMontserrat.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            height: 300.h, // Fixed height for the container
            width: double.infinity, // Full width container
            decoration: BoxDecoration(
              color: Colors.grey[200], // Light gray background color
              borderRadius: BorderRadius.circular(30), // Rounded corners
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to start
                children: [
                  SizedBox(height: 10.h), // Add space inside the container
                  Text(
                    'Date and Time:',
                    style: TextThemes.font14Black900RegularMontserrat.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12.h), // Add space between fields
                  CustomTextField(
                    label: 'Date And Time',
                    icon: Icons.calendar_today,
                  ),
                  SizedBox(height: 20.h), // Add space between fields
                  Text(
                    'Description',
                    style: TextThemes.font14Black900RegularMontserrat.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12.h), // Add space between fields
                  CustomTextField(
                    label: 'Description',
                  ),
                ],
              ),
            ),
          ),
          UploadField(),
          SizedBox(height: 12.h), // Add space between fields

          AppTextButton(
            buttonText: "Next",
            textStyle: TextThemes.font16WhiteA700MediumMontserratAlternates,
            onPressed: onNext,
          ),
        ],
      ),
    );
  }
}
