import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/circular_progress_bar.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/custom_tab_container.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/home_page_transaction_widget.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/money_percentage_progressbar.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final mainProvider = context.read<MainCubit>();
        return Container(
          height: size.height,
          width: size.width,
          color: AppColors.caribbeanGreen,
          child: Column(
            children: [
              GestureDetector(
                onTap: () =>
                    mainProvider.changeSubIndex(index: 2, pageName: "Home"),
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hi, Welcome Back',
                                  style: AppTextStyles.semiBold(
                                      fontSize: 20,
                                      color: AppColors.fenceGreen)),
                              Text('Good Morning',
                                  style: GoogleFonts.leagueSpartan(
                                      fontWeight: FontWeight.w400, // Regular
                                      fontSize: 14,
                                      color: AppColors.fenceGreen)),
                            ],
                          ),
                          GestureDetector(
                            onTap: () => mainProvider.changeSubIndex(
                                index: 1, pageName: "Home"),
                            child: CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColors.lightGreen,
                                child: const Icon(Icons.notifications_none,
                                    size: 20)),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AppImages.incomeIcon,
                                        width: 12, height: 12),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text('Total Balance',
                                          style: AppTextStyles.regular(
                                              fontSize: 12,
                                              color:
                                                  AppColors.lettersAndIcons)),
                                    )
                                  ],
                                ),
                                Text('\$7,783.00',
                                    style: AppTextStyles.bold(
                                        fontSize: 24,
                                        color: AppColors.whiteColor))
                              ],
                            ),
                            Container(
                                height: 42,
                                width: 1,
                                color: AppColors.lightGreen),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AppImages.expenseIcon,
                                        width: 12, height: 12),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text('Total Expense',
                                          style: AppTextStyles.regular(
                                              fontSize: 12,
                                              color:
                                                  AppColors.lettersAndIcons)),
                                    )
                                  ],
                                ),
                                Text('-\$1.187.40',
                                    style: AppTextStyles.bold(
                                        fontSize: 24,
                                        color: AppColors.oceanBlue))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: MoneyPercentageProgressBar(
                            progressAmount: 20000, // For example: $14,000
                            percentage: 30 // For example: 70%)
                            ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.done, size: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text('30% of your expenses, looks good.',
                                style: AppTextStyles.regular(
                                    fontSize: 15, color: AppColors.fenceGreen)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.honeydew,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(65),
                          topRight: Radius.circular(65))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 35),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => mainProvider.changeSubIndex(
                              index: 3, pageName: "Home"),
                          behavior: HitTestBehavior.opaque,
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(31),
                                color: AppColors.caribbeanGreen),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      CircularProgressBar(
                                        progressCircleHeight: 68,
                                        progressCircleWidth: 68,
                                        progressCircleValue: 0.5,
                                        progressCircleColor:
                                            AppColors.oceanBlue,
                                        progressCircleBackgroundColor:
                                            AppColors.honeydew,
                                        centerWidget:
                                            Image.asset(AppImages.carIcon,
                                                // Replace with your image path
                                                height: 21,
                                                width: 37),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Text('Savings\non goals',
                                            textAlign: TextAlign.center,
                                            style: AppTextStyles.medium(
                                                fontSize: 12,
                                                color:
                                                    AppColors.lettersAndIcons)),
                                      )
                                    ],
                                  ),
                                  Container(
                                      height: 108,
                                      width: 1.8,
                                      color: AppColors.honeydew),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            AppImages.salaryIcon,
                                            scale: 4,
                                            color: AppColors.lettersAndIcons,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Revenue Last Week',
                                                    style:
                                                        AppTextStyles.regular(
                                                            fontSize: 12,
                                                            color: AppColors
                                                                .fenceGreen)),
                                                Text('\$4.000.00',
                                                    style: AppTextStyles.bold(
                                                        fontSize: 15,
                                                        color: AppColors
                                                            .fenceGreen)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8),
                                          child: Container(
                                              height: 1.8,
                                              width: 161,
                                              color: AppColors.honeydew)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            AppImages.foodIcon,
                                            scale: 6,
                                            color: AppColors.lettersAndIcons,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Food Last Week',
                                                    style:
                                                        AppTextStyles.regular(
                                                            fontSize: 12,
                                                            color: AppColors
                                                                .fenceGreen)),
                                                Text('-\$100.00',
                                                    style: AppTextStyles.bold(
                                                        fontSize: 15,
                                                        color: AppColors
                                                            .oceanBlue)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: AppColors.lightGreen),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: Row(
                                children: [
                                  Flexible(
                                      child: CustomTabContainer(
                                    title: 'Daily',
                                    color: mainProvider.homePageReportIndex == 0
                                        ? AppColors.caribbeanGreen
                                        : AppColors.transparentColor,
                                    onTap: () => mainProvider
                                        .changeHomePageReportIndex(index: 0),
                                  )),
                                  Flexible(
                                      child: CustomTabContainer(
                                          title: 'Weekly',
                                          color: mainProvider
                                                      .homePageReportIndex ==
                                                  1
                                              ? AppColors.caribbeanGreen
                                              : AppColors.transparentColor,
                                          onTap: () => mainProvider
                                              .changeHomePageReportIndex(
                                                  index: 1))),
                                  Flexible(
                                      child: CustomTabContainer(
                                          title: 'Monthly',
                                          color: mainProvider
                                                      .homePageReportIndex ==
                                                  2
                                              ? AppColors.caribbeanGreen
                                              : AppColors.transparentColor,
                                          onTap: () => mainProvider
                                              .changeHomePageReportIndex(
                                                  index: 2)))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: allHomepageTransaction.length,
                          itemBuilder: (context, index) {
                            return TransactionWidget(
                                transactionModel:
                                    allHomepageTransaction[index]);
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
