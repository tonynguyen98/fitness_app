import 'package:fitness_app/pages/onboardingPages/activity-level.dart';
import 'package:fitness_app/pages/onboardingPages/gender.dart';
import 'package:fitness_app/pages/onboardingPages/get-started.dart';
import 'package:fitness_app/pages/onboardingPages/height.dart';
import 'package:fitness_app/pages/onboardingPages/motivation.dart';
import 'package:fitness_app/pages/onboardingPages/name.dart';
import 'package:fitness_app/pages/onboardingPages/weight.dart';
import 'package:fitness_app/pages/onboardingPages/workout-plan-output.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => GetStarted(),
        );
      case '/second':
        return CupertinoPageRoute(
          builder: (_) => Name(),
        );
      case '/third':
        return CupertinoPageRoute(
          builder: (_) => Gender(),
        );
      case '/fourth':
        return CupertinoPageRoute(
          builder: (_) => Motivation(),
        );
      case '/fifth':
        return CupertinoPageRoute(
          builder: (_) => Height(),
        );
      case '/sixth':
        return CupertinoPageRoute(
          builder: (_) => Weight(),
        );
      case '/seventh':
        return CupertinoPageRoute(
          builder: (_) => ActivityLevel(),
        );
      case '/eighth':
        return CupertinoPageRoute(
          builder: (_) => WorkoutPlanOutput(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
