import 'package:alertopia_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'alertopia_app.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
    // setupGetIt();

  runApp(AlertopiaApp(
    appRouter: AppRouter(),
  ));
}