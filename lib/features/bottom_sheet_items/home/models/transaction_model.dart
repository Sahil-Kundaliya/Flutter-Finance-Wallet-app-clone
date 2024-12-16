import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:flutter/material.dart';

class TransactionModel {
  TransactionModel(
      {required this.transactionImage,
      required this.transactionTitle,
      required this.transactionTime,
      this.transactionType,
      required this.transactionAmount,
      required this.imageColor});

  String transactionImage, transactionTitle, transactionTime, transactionAmount;
  String? transactionType;
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

List<TransactionModel> allIncomeTransaction = [
  TransactionModel(
      transactionImage: AppImages.salaryIcon,
      transactionTitle: 'Salary',
      transactionTime: "18:27 - April 30",
      transactionType: "Monthly",
      transactionAmount: "\$4.000,00",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.salaryIcon,
      transactionTitle: 'Other',
      transactionTime: "17:00 - April 24",
      transactionType: "Payments",
      transactionAmount: "\$120,00",
      imageColor: AppColors.lightBlue),
];

List<TransactionModel> allExpenseTransaction = [
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Groceries',
      transactionTime: "17:00 - April 24",
      transactionType: "Pantry",
      transactionAmount: "-\$100",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.rentIcon,
      transactionTitle: 'Rent',
      transactionTime: "8:30 - April 15",
      transactionType: "Rent",
      transactionAmount: "-\$674,40",
      imageColor: AppColors.oceanBlue),
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Groceries',
      transactionTime: "17:00 - April 24",
      transactionType: "Pantry",
      transactionAmount: "-\$100,00",
      imageColor: AppColors.vividBlue),
];

// Food
List<TransactionModel> foodTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.foodIcon,
      transactionTitle: 'Dinner',
      transactionTime: "18:27 - April 30",
      transactionAmount: "-\$26.00",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.foodIcon,
      transactionTitle: 'Delivery Pizza',
      transactionTime: "15:00 - April 24",
      transactionAmount: "-\$18.35",
      imageColor: AppColors.vividBlue),
  TransactionModel(
      transactionImage: AppImages.foodIcon,
      transactionTitle: 'Lunch',
      transactionTime: "12:30 - April 15",
      transactionAmount: "-\$15.40",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.foodIcon,
      transactionTitle: 'Brunch',
      transactionTime: "9:30 - April 08",
      transactionAmount: "-\$12.13",
      imageColor: AppColors.vividBlue),
];

List<TransactionModel> foodTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.foodIcon,
      transactionTitle: 'Dinner',
      transactionTime: "20:50 - March 31",
      transactionAmount: "-\$27.20",
      imageColor: AppColors.lightBlue),
];

// Transport
List<TransactionModel> transportTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.busIcon,
      transactionTitle: 'Fuel',
      transactionTime: "18:27 - March 30",
      transactionAmount: "-\$3.53",
      imageColor: AppColors.vividBlue),
  TransactionModel(
      transactionImage: AppImages.busIcon,
      transactionTitle: 'car parts',
      transactionTime: "15:00 - March 30",
      transactionAmount: "-\$26.73",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> transportTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.busIcon,
      transactionTitle: 'New tires',
      transactionTime: "12:47 - February 10",
      transactionAmount: "-\$379.99",
      imageColor: AppColors.vividBlue),
  TransactionModel(
      transactionImage: AppImages.busIcon,
      transactionTitle: 'car wash',
      transactionTime: "9:30 - February 09",
      transactionAmount: "-\$9.74",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.busIcon,
      transactionTitle: 'Public Transport',
      transactionTime: "7:50 - February 01",
      transactionAmount: "-\$1.25",
      imageColor: AppColors.lightBlue),
];

// Groceries
List<TransactionModel> groceriesTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Pantry',
      transactionTime: "18:27 - March 10",
      transactionAmount: "-\$55.59",
      imageColor: AppColors.vividBlue),
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Snacks',
      transactionTime: "15:00 - March 01",
      transactionAmount: "-\$35.73",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> groceriesTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Canned Food',
      transactionTime: "10:47 - February 30",
      transactionAmount: "-\$11.82",
      imageColor: AppColors.vividBlue),
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Veggies',
      transactionTime: "7:30 - February 20",
      transactionAmount: "-\$27.67",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.groceriesIcon,
      transactionTitle: 'Groceries',
      transactionTime: "18:50 - February 01",
      transactionAmount: "-\$26.75",
      imageColor: AppColors.lightBlue),
];

//Rent

List<TransactionModel> rentTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.rentIcon,
      transactionTitle: 'Rent',
      transactionTime: "18:27 - April 15",
      transactionAmount: "-\$478.99",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> rentTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.rentIcon,
      transactionTitle: 'Rent',
      transactionTime: "18:27 - April 15",
      transactionAmount: "-\$478.99",
      imageColor: AppColors.lightBlue),
];
// Gifts

List<TransactionModel> giftsTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.giftsIcon,
      transactionTitle: 'perfume',
      transactionTime: "10:27 - April 28",
      transactionAmount: "-\$125.00",
      imageColor: AppColors.vividBlue),
  TransactionModel(
      transactionImage: AppImages.giftsIcon,
      transactionTitle: 'Make-up',
      transactionTime: "16:28 - April 15",
      transactionAmount: "-\$60.00",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> giftsTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.giftsIcon,
      transactionTitle: 'teddy Bear',
      transactionTime: "8:30 - March 10",
      transactionAmount: "-\$20.00",
      imageColor: AppColors.vividBlue),
];

// Medicine

List<TransactionModel> medicineTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.medicineIcon,
      transactionTitle: 'Acetaminophen',
      transactionTime: "12:11 - April 30",
      transactionAmount: "-\$2.30",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> medicineTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.medicineIcon,
      transactionTitle: 'Acetaminophen',
      transactionTime: "12:30 - March 20",
      transactionAmount: "-\$2.30",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.medicineIcon,
      transactionTitle: 'Muscle pain cream',
      transactionTime: "9:30 - March 12",
      transactionAmount: "-\$19.82",
      imageColor: AppColors.lightBlue),
];

// Entertainment
List<TransactionModel> entertainmentTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.entertainmentIcon,
      transactionTitle: 'Cinema',
      transactionTime: "20:15 - April 29",
      transactionAmount: "-\$30.00",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.entertainmentIcon,
      transactionTitle: 'netflix',
      transactionTime: "16:15 - April 12",
      transactionAmount: "-\$19.82",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> entertainmentTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.entertainmentIcon,
      transactionTitle: 'netflix',
      transactionTime: "16:15 - March 12",
      transactionAmount: "-\$19.82",
      imageColor: AppColors.vividBlue),
];

// Travel
List<TransactionModel> travelTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.travelIcon,
      transactionTitle: 'Travel deposit',
      transactionTime: "19:56 - April 30",
      transactionAmount: "\$217.77",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.travelIcon,
      transactionTitle: 'Travel deposit',
      transactionTime: "19:56 - April 30",
      transactionAmount: "\$217.77",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.travelIcon,
      transactionTitle: 'Travel deposit',
      transactionTime: "19:56 - April 30",
      transactionAmount: "\$217.77",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> travelTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.travelIcon,
      transactionTitle: 'Travel deposit',
      transactionTime: "19:56 - April 30",
      transactionAmount: "\$217.77",
      imageColor: AppColors.lightBlue),
];

// House
List<TransactionModel> houseTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.newHomeIcon,
      transactionTitle: 'House deposit',
      transactionTime: "19:56 - April 5",
      transactionAmount: "\$477.77",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> houseTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.newHomeIcon,
      transactionTitle: 'House deposit',
      transactionTime: "20:25 - January 16",
      transactionAmount: "\$102.74",
      imageColor: AppColors.oceanBlue),
  TransactionModel(
      transactionImage: AppImages.newHomeIcon,
      transactionTitle: 'House deposit',
      transactionTime: "15:56 - January 02",
      transactionAmount: "\$44.26",
      imageColor: AppColors.lightBlue),
];

// Car
List<TransactionModel> carTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.carIcon,
      transactionTitle: 'Car deposit',
      transactionTime: "14:16 - July 5",
      transactionAmount: "\$387.32",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> carTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.carIcon,
      transactionTitle: 'Car deposit',
      transactionTime: "21:45 - May 30",
      transactionAmount: "\122.99",
      imageColor: AppColors.lightBlue),
  TransactionModel(
      transactionImage: AppImages.carIcon,
      transactionTitle: 'Car deposit',
      transactionTime: "14:25 - May 05",
      transactionAmount: "\85.94",
      imageColor: AppColors.oceanBlue),
];
// Wedding
List<TransactionModel> weddingTransaction1 = [
  TransactionModel(
      transactionImage: AppImages.weddingIcon,
      transactionTitle: 'Wedding deposit',
      transactionTime: "18:46 - November 15",
      transactionAmount: "\$87.32",
      imageColor: AppColors.lightBlue),
];
List<TransactionModel> weddingTransaction2 = [
  TransactionModel(
      transactionImage: AppImages.weddingIcon,
      transactionTitle: 'Wedding deposit',
      transactionTime: "21:45 - September 30",
      transactionAmount: "\$22.02",
      imageColor: AppColors.oceanBlue),
  TransactionModel(
      transactionImage: AppImages.weddingIcon,
      transactionTitle: 'Wedding deposit',
      transactionTime: "12:25 - September 15",
      transactionAmount: "\$187.32",
      imageColor: AppColors.lightBlue),
];
