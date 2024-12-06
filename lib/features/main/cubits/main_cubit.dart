import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/home_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(InitialMainState());

  int mainPageIndex = 0;

  //home page
  int homePageReportIndex = 0;

  changeMainPageIndex({required int index}) {
    mainPageIndex = index;
    updateState();
  }

  changeHomePageReportIndex({required int index}) {
    homePageReportIndex = index;
    updateState();
  }

  updateState() {
    emit(UpdateMainState());
  }

  Widget getMainScreenWidget() {
    switch (mainPageIndex) {
      case 0:
        return HomePage();
      default:
        return HomePage();
    }
  }
}
