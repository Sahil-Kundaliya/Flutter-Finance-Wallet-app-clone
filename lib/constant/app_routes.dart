import 'package:finance_wallet_app_clone/features/auth/pages/sign_in_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/sign_up_page.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/app_lunch_page.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/on_boarding_page.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static final AppRoute _appRoute = AppRoute();

  static AppRoute get instance => _appRoute;

  Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.splashScreen: (context) => const SplashScreen(),
    LunchScreen.lunchScreen: (context) => const LunchScreen(),
    OnBoardingScreen.onBoardingScreen: (context) => const OnBoardingScreen(),

    //auth
    SignInPage.signInPage: (context) => SignInPage(),
    SignUpPage.signUpPage: (context) => SignUpPage(),
  };
}
