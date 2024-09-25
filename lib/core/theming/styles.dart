import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// font13BlueSemiBold
class TextThemes {
  static TextStyle font14Black900RegularMontserrat = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: 'Montserrat',
    color: ColorsManager.black900.withOpacity(0.6),
  );

  
  static TextStyle font14WhiteA700RegularMontserratAlternates = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: 'Montserrat Alternates',
    color: ColorsManager.whiteA700,
  );
  static TextStyle font16WhiteA700MediumMontserratAlternates = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    fontFamily: 'Montserrat Alternates',
    color: ColorsManager.whiteA700,
  );
  static TextStyle font20WhiteA700MostThickMontserrat = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.mostThick,
    fontFamily: 'Montserrat',
    color: ColorsManager.whiteA700,
  );

}
