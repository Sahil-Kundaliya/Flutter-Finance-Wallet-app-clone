import 'package:finance_wallet_app_clone/features/auth/pages/fingerprint_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/forgot_password_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/new_password_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/password_status_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/security_pin_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/sign_in_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/sign_up_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/add_fingerprint_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/change_pin_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/jhon_fingerprint_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/profile_fingerprint_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/successful_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/terms_and_conditions_page.dart';
import 'package:finance_wallet_app_clone/features/main/pages/main_page.dart';
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
    ForgotPasswordPage.forgotPasswordPage: (context) =>
        const ForgotPasswordPage(),
    SecurityPinPage.securityPinPage: (context) => const SecurityPinPage(),
    NewPasswordPage.newPasswordPage: (context) => const NewPasswordPage(),
    FingerprintPage.fingerprintPage: (context) => const FingerprintPage(),
    PasswordStatusPage.passwordStatusPage: (context) =>
        const PasswordStatusPage(),

    //Main
    MainScreen.mainScreen: (context) => const MainScreen(),

    // profile
    ChangePinScreen.changePinScreen: (context) => const ChangePinScreen(),
    ProfileFingerprintScreen.profileFingerprintScreen: (context) =>
        const ProfileFingerprintScreen(),
    TermsAndConditionsScreen.termsAndConditionsScreen: (context) =>
        const TermsAndConditionsScreen(),
    SuccessfulScreen.successfulScreen: (context) => const SuccessfulScreen(),
    AddFingerprintScreen.addFingerprintScreen: (context) =>
        const AddFingerprintScreen(),
    JhonFingerprintScreen.jhonFingerprintScreen: (context) =>
        const JhonFingerprintScreen(),
  };
}
