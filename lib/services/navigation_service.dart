import 'package:flutter/material.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // Navigate to a named route
  static Future<dynamic> navigateTo(String routeName,
      {Object? arguments}) async {
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  // Navigate and replace current route
  static Future<dynamic> navigateAndReplace(String routeName,
      {Object? arguments}) async {
    return navigatorKey.currentState
        ?.pushReplacementNamed(routeName, arguments: arguments);
  }

  // Go back
  static void goBack({dynamic result}) {
    return navigatorKey.currentState?.pop(result);
  }

  // Pop until first route
  static void popUntilFirst() {
    navigatorKey.currentState?.popUntil((route) => route.isFirst);
  }
}
