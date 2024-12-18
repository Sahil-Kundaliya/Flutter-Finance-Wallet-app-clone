import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/analysis_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/calendar_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/search_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/categories/pages/add_expenses_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/categories/pages/categories_detail_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/categories/pages/categories_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/categories/pages/saving_detail_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/categories/pages/savings_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/account_balance_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/home_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/notification_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/pages/quickly_analysis_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/edit_profile_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/profile_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/security_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/settings_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/transaction/pages/transaction_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bottom_sheet_items/categories/models/categories_model.dart';
import '../../bottom_sheet_items/home/models/transaction_model.dart';

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
  int selectedRadio = 0;
  int calendarIndex = 0;
  String? selectedSearchCategory;

  final List<String> searchCategories = [
    "Food",
    "Transport",
    "Groceries",
    "Rent",
    "Gifts",
    "Medicine",
    "Entertainment",
    "Savings"
  ];

  // Transactions
  int transactionId = 0;
  int transactionPageSubIndex = 0;

  // Categories
  int categoriesPageSubIndex = 0;
  CategoriesModel selectedCategories = allCategories.first;

  // Profile
  bool pushNotificationsToggled = true;
  bool themeToggled = false;
  String successfulPageState = "Pin Has been Changed successfully";

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

  changeAnalysisPageCalendarIndex({required int index}) {
    calendarIndex = index;
    updateState();
  }

  changeTransactionId({required int index}) {
    transactionId = index;
    updateState();
  }

  changeSuccessfulPageState({required String nextStatus}) {
    successfulPageState = nextStatus;
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
      case "Transactions":
        transactionPageSubIndex = index;
        break;
      case "Categories":
        categoriesPageSubIndex = index;
        break;
    }
    updateState();
  }

  updateState() {
    emit(UpdateMainState());
  }

  changeDropDownValue({required String dropdownValue}) {
    selectedSearchCategory = dropdownValue;
    updateState();
  }

  changeSelectedCategory({required CategoriesModel nextCategory}) {
    selectedCategories = nextCategory;
    updateState();
  }

  changeRadioValue({required int radioValue}) {
    selectedRadio = radioValue;
    updateState();
  }

  changeToggle({required int index}) {
    if (index == 0) {
      pushNotificationsToggled = !pushNotificationsToggled;
    } else {
      themeToggled = !themeToggled;
    }
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
      case 2:
        switch (transactionPageSubIndex) {
          case 0:
            return const TransactionPage();
          case 1:
            return const NotificationScreen();
          case 2:
            return SearchScreen();
          case 3:
            return const CalendarScreen();
          default:
            return const AnalysisPage();
        }
      case 3:
        switch (categoriesPageSubIndex) {
          case 0:
            return const CategoriesScreen();
          case 1:
            return const NotificationScreen();
          case 2:
            return const CategoriesDetailScreen();
          case 3:
            return AddExpensesScreen();
          case 4:
            return const SavingsScreen();
          case 5:
            return const SavingDetailScreen();
          default:
            return const AnalysisPage();
        }
      case 4:
        switch (categoriesPageSubIndex) {
          case 0:
            return const ProfileScreen();
          case 1:
            return const NotificationScreen();
          case 2:
            return const EditProfileScreen();
          case 3:
            return const SecurityScreen();
          case 4:
            return const SettingsScreen();
          default:
            return const ProfileScreen();
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

  getCategoryDetailList({required int index}) {
    if (selectedCategories == allCategories[0]) {
      return index == 0 ? foodTransaction1 : foodTransaction2;
    } else if (selectedCategories == allCategories[1]) {
      return index == 0 ? transportTransaction1 : transportTransaction2;
    } else if (selectedCategories == allCategories[2]) {
      return index == 0 ? medicineTransaction1 : medicineTransaction2;
    } else if (selectedCategories == allCategories[3]) {
      return index == 0 ? groceriesTransaction1 : groceriesTransaction1;
    } else if (selectedCategories == allCategories[4]) {
      return index == 0 ? rentTransaction1 : rentTransaction2;
    } else if (selectedCategories == allCategories[5]) {
      return index == 0 ? giftsTransaction1 : giftsTransaction2;
    } else if (selectedCategories == allCategories[7]) {
      return index == 0 ? entertainmentTransaction1 : entertainmentTransaction2;
    } else if (selectedCategories == allCategoriesSaving[0]) {
      return index == 0 ? travelTransaction1 : travelTransaction2;
    } else if (selectedCategories == allCategoriesSaving[1]) {
      return index == 0 ? houseTransaction1 : houseTransaction2;
    } else if (selectedCategories == allCategoriesSaving[2]) {
      return index == 0 ? carTransaction1 : carTransaction2;
    } else if (selectedCategories == allCategoriesSaving[3]) {
      return index == 0 ? weddingTransaction1 : weddingTransaction2;
    }
    // switch (selectedCategories) {
    //   case allCategories.:
    //   case allCategories[1]:
    //     return index == 0 ? foodTransaction1 : foodTransaction2;
    //
    //   default:
    //     return [];
    // }
  }
}
