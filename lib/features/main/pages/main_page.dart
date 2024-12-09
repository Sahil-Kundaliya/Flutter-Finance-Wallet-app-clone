import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String mainScreen = '/MainScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      final mainProvider = context.read<MainCubit>();
      return Scaffold(
        backgroundColor: AppColors.honeydew,
        body: mainProvider.getMainScreenWidget(),
        bottomNavigationBar: Container(
          width: size.width,
          height: 100,
          decoration: BoxDecoration(
              color: AppColors.lightGreen,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(70), topLeft: Radius.circular(70))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    mainProvider.changeMainPageIndex(index: 0);
                    mainProvider.changeHomePageSubIndex(index: 0);
                  },
                  child: Container(
                    height: 50,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: mainProvider.mainPageIndex == 0 &&
                                mainProvider.homePageSubIndex == 0
                            ? AppColors.caribbeanGreen
                            : AppColors.transparentColor),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(AppImages.homeIcon),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => mainProvider.changeMainPageIndex(index: 1),
                  child: Container(
                    height: 50,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: mainProvider.mainPageIndex == 1
                            ? AppColors.caribbeanGreen
                            : AppColors.transparentColor),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(AppImages.searchIcon),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => mainProvider.changeMainPageIndex(index: 2),
                  child: Container(
                    height: 50,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: mainProvider.mainPageIndex == 2
                            ? AppColors.caribbeanGreen
                            : AppColors.transparentColor),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(AppImages.transactionIcon),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => mainProvider.changeMainPageIndex(index: 3),
                  child: Container(
                    height: 50,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: mainProvider.mainPageIndex == 3
                            ? AppColors.caribbeanGreen
                            : AppColors.transparentColor),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(AppImages.categoryIcon),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => mainProvider.changeMainPageIndex(index: 4),
                  child: Container(
                    height: 50,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: mainProvider.mainPageIndex == 4
                            ? AppColors.caribbeanGreen
                            : AppColors.transparentColor),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(AppImages.profileIcon),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
