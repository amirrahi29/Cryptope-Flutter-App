import 'package:cryptope/Cryptope/presentation/pages/DashboardPage.dart';
import 'package:cryptope/Cryptope/presentation/pages/ErrorPage.dart';
import 'package:cryptope/Cryptope/presentation/pages/IntroOnBoardingPage.dart';
import 'package:flutter/material.dart';
import 'PageConstants.dart';

class OnPageGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case PageConstants.introOnBoardingPage:
        {
          return materialPageRoute(widget: IntroOnBoardingPage());
        }
      case PageConstants.dashboardPage:
        {
          return materialPageRoute(widget: DashboardPage());
        }
      default:
        {
          return materialPageRoute(widget: ErrorPage());
        }
    }
  }
}

MaterialPageRoute materialPageRoute({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
