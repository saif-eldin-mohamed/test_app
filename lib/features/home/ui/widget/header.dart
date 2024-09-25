import 'package:alertopia_app/core/theming/colors.dart';
import 'package:alertopia_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.h,
      color: ColorsManager.blueA400,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_back, // السهم على اليسار
              color: Colors.white, // تغيير اللون حسب الحاجة
            ),
            SizedBox(width: 10.0.w), // المسافة بين السهم والنص
            Expanded(
              child: Text(
                'Book Service',
                style: TextThemes.font16WhiteA700MediumMontserratAlternates,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
