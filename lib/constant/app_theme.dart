import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:flutter/material.dart';

extension MyThemeColors on ColorScheme {
  Color get appDarkTheme => (brightness == Brightness.dark)
      ? AppColors.blackColor
      : AppColors.whiteColor;
  Color get appLightTheme => (brightness != Brightness.dark)
      ? AppColors.blackColor
      : AppColors.whiteColor;

  Color get appPrimary =>
      (brightness == Brightness.dark) ? AppColors.darkGreen : AppColors.lightGreen;
  Color get appPrimaryBackground => (brightness == Brightness.dark)
      ? AppColors.primaryBackground
      : AppColors.secondaryBackground;
  Color get appPrimaryText => (brightness == Brightness.dark)
      ? AppColors.primaryText
      : AppColors.secondaryText;

  Color get appSecondary =>
      (brightness != Brightness.dark) ? AppColors.darkGreen : AppColors.secondary;
  Color get appSecondaryBackground => (brightness != Brightness.dark)
      ? AppColors.primaryBackground
      : AppColors.secondaryBackground;
  Color get appSecondaryText => (brightness != Brightness.dark)
      ? AppColors.primaryText
      : AppColors.secondaryText;
}

class MyTheme with ChangeNotifier {
  bool isDark = false;
  static final MyTheme _myTheme = MyTheme();
  static MyTheme get instance => _myTheme;


  ThemeMode currentTheme() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme({required bool themeDark}) {
    isDark = themeDark;
    notifyListeners();
  }

  bool currentThemeIsDark() {
    return isDark;
  }
}
