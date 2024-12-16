import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:flutter/material.dart';

class CategoriesModel {
  CategoriesModel(
      {required this.categoriesImage,
      required this.categoriesName,
      required this.categoriesColor,
      this.savingGoal,
      this.amountSaved});

  String categoriesName, categoriesImage;
  Color categoriesColor;

  String? savingGoal, amountSaved;
}

List<CategoriesModel> allCategories = [
  CategoriesModel(
      categoriesImage: AppImages.foodIcon,
      categoriesName: "food",
      categoriesColor: AppColors.oceanBlue),
  CategoriesModel(
      categoriesImage: AppImages.busIcon,
      categoriesName: "Transport",
      categoriesColor: AppColors.lightBlue),
  CategoriesModel(
      categoriesImage: AppImages.medicineIcon,
      categoriesName: "Medicine",
      categoriesColor: AppColors.lightBlue),
  CategoriesModel(
      categoriesImage: AppImages.groceriesIcon,
      categoriesName: "Groceries",
      categoriesColor: AppColors.lightBlue),
  CategoriesModel(
      categoriesImage: AppImages.rentIcon,
      categoriesName: "Rent",
      categoriesColor: AppColors.lightBlue),
  CategoriesModel(
      categoriesImage: AppImages.giftsIcon,
      categoriesName: "Gifts",
      categoriesColor: AppColors.lightBlue),
  CategoriesModel(
      categoriesImage: AppImages.savingIcon,
      categoriesName: "Savings",
      categoriesColor: AppColors.lightBlue),
  CategoriesModel(
      categoriesImage: AppImages.entertainmentIcon,
      categoriesName: "Entertainment",
      categoriesColor: AppColors.lightBlue),
];

// saving
List<CategoriesModel> allCategoriesSaving = [
  CategoriesModel(
      categoriesImage: AppImages.travelIcon,
      categoriesName: "Travel",
      categoriesColor: AppColors.oceanBlue,
      savingGoal: "\$1,962.93",
      amountSaved: "\$653.31"),
  CategoriesModel(
      categoriesImage: AppImages.newHomeIcon,
      categoriesName: "new House",
      categoriesColor: AppColors.lightBlue,
      savingGoal: "\$569,200",
      amountSaved: "\$625.48"),
  CategoriesModel(
      categoriesImage: AppImages.carIcon,
      categoriesName: "Car",
      categoriesColor: AppColors.lightBlue,
      savingGoal: "\$14,390",
      amountSaved: "\$596.25"),
  CategoriesModel(
      categoriesImage: AppImages.weddingIcon,
      categoriesName: "Wedding",
      categoriesColor: AppColors.lightBlue,
      savingGoal: "\$34,700",
      amountSaved: "\$296.25")
];
