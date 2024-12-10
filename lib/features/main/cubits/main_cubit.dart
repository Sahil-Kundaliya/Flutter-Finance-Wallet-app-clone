import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/analysis_page.dart';
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
  int homePageSubIndex =
      0; // 0-Home page, 1-Notification page, 2-Account Balance page, 3-Quickly Analysis page

  // Analysis
  int analysisReportIndex = 0;

  changeMainPageIndex({required int index}) {
    mainPageIndex = index;
    updateState();
  }

  changeHomePageReportIndex({required int index}) {
    homePageReportIndex = index;
    updateState();
  }

  changeAnalysisPageReportIndex({required int index}) {
    analysisReportIndex = index;
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
      case 1:
        return AnalysisPage();
      default:
        return HomePage();
    }
  }

  String getAnalysisData({required String dataType}) {
    switch (dataType) {
      case "Chart":
        switch (analysisReportIndex) {
          case 0:
            return AppImages.dailyAnalysisChart;
          case 1:
            return AppImages.weeklyAnalysisChart;
          case 2:
            return AppImages.monthlyAnalysisChart;
          case 3:
            return AppImages.yearAnalysisChart;
          default:
            return "";
        }
      case "Income":
        switch (analysisReportIndex) {
          case 0:
            return "4,120.00";
          case 1:
            return "11,420.00";
          case 2:
            return "47,200.00";
          case 3:
            return "430,560.00";
          default:
            return "";
        }
      case "Expense":
        switch (analysisReportIndex) {
          case 0:
            return "1.187.40";
          case 1:
            return "20,000.20";
          case 2:
            return "35,510.20";
          case 3:
            return "329,300.00";
          default:
            return "";
        }
      default:
        return "";
    }
  }
}
