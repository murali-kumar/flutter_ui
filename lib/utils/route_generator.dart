import 'package:flutter/material.dart';

import '../dashboard/dashboard_menu.dart';
import '../my_home_page.dart';

class RouteGenerator {
  static const String homeRoute = '/home';
  ///Dashboard
  static const String dashboardMenuRoute = '/dashmenu';
  static const String dashboard1 = '/dash1';
  ///

  ///
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    //final args = settings.arguments;

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(),
            settings: RouteSettings(name: settings.name));
        ///Dashboard
      case dashboardMenuRoute:
        return MaterialPageRoute(
            builder: (_) => const DashboardMenu(),
            settings: RouteSettings(name: settings.name));
    ///
      default:
        return null;
    }
  }
}