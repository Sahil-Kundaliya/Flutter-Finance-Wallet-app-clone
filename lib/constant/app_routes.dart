import 'package:finance_wallet_app_clone/features/splash/pages/app_lunch_page.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static final AppRoute _appRoute = AppRoute();

  static AppRoute get instance => _appRoute;

  Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.splashScreen: (context) => const SplashScreen(),
    LunchScreen.lunchScreen: (context) => const LunchScreen(),
  };
}
