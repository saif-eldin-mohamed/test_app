import 'package:alertopia_app/core/routing/routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';


class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.bookingServiceScreen:
        return MaterialPageRoute(
          builder: (_) => BookingServicePage(),
        );
        default:
        return null;
    
    }
  }
}
