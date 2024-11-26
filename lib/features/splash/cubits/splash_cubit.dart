import 'package:finance_wallet_app_clone/features/splash/cubits/splash_state.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/app_lunch_page.dart';
import 'package:finance_wallet_app_clone/features/splash/pages/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitialState()) {
    // navigationToNextPage(context: context);
  }

  int onBoardingIndex = 0;

  changeOnBoardingIndex({required nextIndex}) {
    onBoardingIndex = nextIndex;
    updateState();
  }

  void navigationToNextPage({required BuildContext context}) {
    Navigator.pushReplacementNamed(context, LunchScreen.lunchScreen);
  }

  updateState() {
    emit(SplashUpdateState());
  }
}
