import 'package:finance_wallet_app_clone/constant/app_images.dart';

class CategoriesModel {
  CategoriesModel(
      {required this.categoriesImage, required this.categoriesName});

  String categoriesName, categoriesImage;
}

List<CategoriesModel> allCategories = [
  CategoriesModel(categoriesImage: AppImages.foodIcon, categoriesName: "food"),
  CategoriesModel(
      categoriesImage: AppImages.busIcon, categoriesName: "Transport"),
  CategoriesModel(
      categoriesImage: AppImages.medicineIcon, categoriesName: "Medicine"),
  CategoriesModel(
      categoriesImage: AppImages.groceriesIcon, categoriesName: "Groceries"),
  CategoriesModel(categoriesImage: AppImages.rentIcon, categoriesName: "Rent"),
  CategoriesModel(
      categoriesImage: AppImages.giftsIcon, categoriesName: "Gifts"),
  CategoriesModel(
      categoriesImage: AppImages.savingIcon, categoriesName: "Savings"),
  CategoriesModel(
      categoriesImage: AppImages.entertainmentIcon,
      categoriesName: "Entertainment"),
];
