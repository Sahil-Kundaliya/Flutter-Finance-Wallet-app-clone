import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:flutter/material.dart';

class TransactionModel {
  TransactionModel(
      {required this.transactionImage,
      required this.transactionTitle,
      required this.transactionTime,
      required this.transactionType,
      required this.transactionAmount,
      required this.imageColor});

  String transactionImage,
      transactionTitle,
      transactionTime,
      transactionType,
      transactionAmount;
  Color imageColor;
}

List<TransactionModel> allHomepageTransaction = [
  TransactionModel(
      transactionImage: AppImages.salaryIcon,
      transactionTitle: 'Salary',
      transactionTime: "18:27 - April 30",
      transactionType: "Monthly",
      transactionAmount: "\$4.000,00",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Groceries',
      transactionTime: "17:00 - April 24",
      transactionType: "Pantry",
      transactionAmount: "-\$100,00",
      imageColor: AppColors.vividBlue),
  TransactionModel(
      transactionImage: AppImages.rentIcon,
      transactionTitle: 'Rent',
      transactionTime: "8:30 - April 15",
      transactionType: "Rent",
      transactionAmount: "-\$674,40",
      imageColor: AppColors.oceanBlue),
];
