import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/analysis_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/calendar_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/search_page.dart';
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
  int analysisPageSubIndex =
      0; //0-Home page, 1-Notification page, 3-Search page, 4-Calendar page

  // Analysis
  int analysisReportIndex = 0;
  final List<String> categories = [
    "Food",
    "Transport",
    "Groceries",
    "Rent",
    "Gifts",
    "Medicine",
    "Entertainment",
    "Savings"
  ];
  String? selectedCategory;
  int selectedRadio = 0;

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

  changeSubIndex({required int index, required String pageName}) {
    switch (pageName) {
      case "Home":
        homePageSubIndex = index;
        break;
      case "Analysis":
        analysisPageSubIndex = index;
        break;
    }
    updateState();
  }

  updateState() {
    emit(UpdateMainState());
  }

  changeDropDownValue({required String dropdownValue}) {
    selectedCategory = dropdownValue;
    updateState();
  }

  changeRadioValue({required int radioValue}) {
    selectedRadio = radioValue;
    updateState();
  }

  Widget getMainScreenWidget() {
    switch (mainPageIndex) {
      case 0:
        switch (homePageSubIndex) {
          case 0:
            return const HomePage();
          case 1:
            return const NotificationScreen();
          case 2:
            return const AccountBalanceScreen();
          case 3:
            return const QuicklyAnalysisScreen();
          default:
            return const HomePage();
        }
      case 1:
        switch (analysisPageSubIndex) {
          case 0:
            return const AnalysisPage();
          case 1:
            return const NotificationScreen();
          case 2:
            return SearchScreen();
          case 3:
            return const CalendarScreen();
          default:
            return const AnalysisPage();
        }

      default:
        return const HomePage();
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
