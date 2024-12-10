import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/analysis/pages/widget/target_widget.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/custom_tab_container.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/money_percentage_progressbar.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      return Container(
        height: size.height,
        width: size.width,
        color: AppColors.caribbeanGreen,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Analysis',
                              style: AppTextStyles.semiBold(
                                  fontSize: 20, color: AppColors.fenceGreen)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            mainProvider.changeHomePageSubIndex(index: 1),
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.lightGreen,
                            child:
                                const Icon(Icons.notifications_none, size: 20)),
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
                                          color: AppColors.lettersAndIcons)),
                                )
                              ],
                            ),
                            Text('\$7,783.00',
                                style: AppTextStyles.bold(
                                    fontSize: 24, color: AppColors.whiteColor))
                          ],
                        ),
                        Container(
                            height: 42, width: 1, color: AppColors.lightGreen),
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
                                          color: AppColors.lettersAndIcons)),
                                )
                              ],
                            ),
                            Text('-\$1.187.40',
                                style: AppTextStyles.bold(
                                    fontSize: 24, color: AppColors.oceanBlue))
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
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: AppColors.honeydew,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(65),
                      topRight: Radius.circular(65))),
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: AppColors.lightGreen),
                          child: Row(
                            children: [
                              Flexible(
                                  child: CustomTabContainer(
                                title: 'Daily',
                                color: mainProvider.analysisReportIndex == 0
                                    ? AppColors.caribbeanGreen
                                    : AppColors.transparentColor,
                                onTap: () => mainProvider
                                    .changeAnalysisPageReportIndex(index: 0),
                              )),
                              Flexible(
                                  child: CustomTabContainer(
                                      title: 'Weekly',
                                      color:
                                          mainProvider.analysisReportIndex == 1
                                              ? AppColors.caribbeanGreen
                                              : AppColors.transparentColor,
                                      onTap: () => mainProvider
                                          .changeAnalysisPageReportIndex(
                                              index: 1))),
                              Flexible(
                                  child: CustomTabContainer(
                                      title: 'Monthly',
                                      color:
                                          mainProvider.analysisReportIndex == 2
                                              ? AppColors.caribbeanGreen
                                              : AppColors.transparentColor,
                                      onTap: () => mainProvider
                                          .changeAnalysisPageReportIndex(
                                              index: 2))),
                              Flexible(
                                  child: CustomTabContainer(
                                      title: 'Year',
                                      color:
                                          mainProvider.analysisReportIndex == 3
                                              ? AppColors.caribbeanGreen
                                              : AppColors.transparentColor,
                                      onTap: () => mainProvider
                                          .changeAnalysisPageReportIndex(
                                              index: 3)))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Stack(
                          children: [
                            Image.asset(
                              mainProvider.getAnalysisData(dataType: "Chart"),
                              height: 247,
                            ),
                            Positioned(
                              top: 22,
                              right: 22,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: AppColors.caribbeanGreen,
                                          borderRadius:
                                              BorderRadius.circular(12.5)),
                                      child: Icon(
                                        Icons.search,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: AppColors.caribbeanGreen,
                                            borderRadius:
                                                BorderRadius.circular(12.5)),
                                        child: Icon(
                                          Icons.calendar_today_outlined,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  AppImages.incomeIcon,
                                  color: AppColors.caribbeanGreen,
                                  width: 30,
                                  height: 30,
                                ),
                                Text(
                                  'Income',
                                  style: AppTextStyles.medium(
                                      fontSize: 15,
                                      color: AppColors.lettersAndIcons),
                                ),
                                Text(
                                  '\$${mainProvider.getAnalysisData(dataType: "Income")}',
                                  style: AppTextStyles.semiBold(
                                      fontSize: 20,
                                      color: AppColors.lettersAndIcons),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  AppImages.expenseIcon,
                                  color: AppColors.oceanBlue,
                                  width: 30,
                                  height: 30,
                                ),
                                Text(
                                  'Expense',
                                  style: AppTextStyles.medium(
                                      fontSize: 15,
                                      color: AppColors.lettersAndIcons),
                                ),
                                Text(
                                  '\$${mainProvider.getAnalysisData(dataType: "Expense")}',
                                  style: AppTextStyles.semiBold(
                                      fontSize: 20, color: AppColors.oceanBlue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text('My targets'),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TargetWidget(
                              title: "Travel",
                              centerTitle: "30%",
                              progressCircleValue: 0.3,
                            ),
                            TargetWidget(
                              title: "Car",
                              centerTitle: "50%",
                              progressCircleValue: 0.5,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      );
    });
  }
}
