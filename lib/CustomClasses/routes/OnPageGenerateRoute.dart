import 'package:cryptope/model/EventModel.dart';
import 'package:cryptope/model/ProjectModel.dart';
import 'package:cryptope/view/pages/AuthPages/SignInPage.dart';
import 'package:cryptope/view/pages/AuthPages/SignUpPage.dart';
import 'package:cryptope/view/pages/DashboardPage.dart';
import 'package:cryptope/view/pages/ErrorPage.dart';
import 'package:cryptope/view/pages/EventDetailsPage.dart';
import 'package:cryptope/view/pages/IntroOnBoardingPage.dart';
import 'package:cryptope/view/pages/TokenDetailsPage.dart';
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
      case PageConstants.signInPage:
        {
          return materialPageRoute(widget: SignInPage());
        }
      case PageConstants.signUpPage:
        {
          return materialPageRoute(widget: SignUpPage());
        }
      case PageConstants.eventDetailPage:
        {
          if(args is EventList)
          {
            return materialPageRoute(widget: EventDetailsPage(eventList: args));
          }else{
            return materialPageRoute(widget: ErrorPage());
          }
        }
      case PageConstants.tokenDetailPage:
        {
          if(args is ProjectList)
          {
            return materialPageRoute(widget: TokenDetailsPage(projectList: args));
          }else{
            return materialPageRoute(widget: ErrorPage());
          }
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
