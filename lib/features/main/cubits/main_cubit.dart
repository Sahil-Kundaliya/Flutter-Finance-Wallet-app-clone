import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/account_balance_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/home_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/notification_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/quickly_analysis_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(InitialMainState());

  int mainPageIndex = 0;

  //home page
  int homePageReportIndex = 0;
  int homePageSubIndex = 0;

  changeMainPageIndex({required int index}) {
    mainPageIndex = index;
    updateState();
  }

  changeHomePageReportIndex({required int index}) {
    homePageReportIndex = index;
    updateState();
  }

  changeHomePageSubIndex({required int index}) {
    homePageSubIndex = index;
    updateState();
  }

  updateState() {
    emit(UpdateMainState());
  }

  Widget getMainScreenWidget() {
    switch (mainPageIndex) {
      case 0:
        switch (homePageSubIndex) {
          case 0:
            return HomePage();
          case 1:
            return NotificationScreen();
          case 2:
            return AccountBalanceScreen();
          case 3:
            return QuicklyAnalysisScreen();
          default:
            return HomePage();
        }
      default:
        return HomePage();
    }
  }
}
