//todo: client app
import 'package:alertopia_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class AlertopiaApp extends StatelessWidget {
  final AppRouter appRouter;
  const AlertopiaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: MaterialApp(
        title: ('Alertopia'),
        theme: ThemeData(
            primaryColor: ColorsManager.white,
            scaffoldBackgroundColor: ColorsManager.white),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.bookingServiceScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
