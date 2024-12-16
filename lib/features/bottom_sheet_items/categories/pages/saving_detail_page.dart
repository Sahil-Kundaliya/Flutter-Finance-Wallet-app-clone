import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/circular_progress_bar.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/home_page_transaction_widget.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/money_percentage_progressbar.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_images.dart';
import '../../../../constant/app_text_styles.dart';
import '../../../main/cubits/main_state.dart';

class SavingDetailScreen extends StatelessWidget {
  const SavingDetailScreen({super.key});

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
                        IconButton(
                          onPressed: () {
                            mainProvider.changeSubIndex(
                                index: 0, pageName: "Categories");
                          },
                          constraints: const BoxConstraints(),
                          // Removes default constraints
                          padding: EdgeInsets.zero,
                          // Removes default padding
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.whiteColor,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                                mainProvider.selectedCategories.categoriesName,
                                style: AppTextStyles.semiBold(
                                    fontSize: 20, color: AppColors.fenceGreen)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => mainProvider.changeSubIndex(
                              index: 1, pageName: "Categories"),
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: AppColors.lightGreen,
                              child: const Icon(Icons.notifications_none,
                                  size: 20)),
                        )
                      ],
                    ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(AppImages.incomeIcon),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              'Goal',
                                              style: AppTextStyles.regular(
                                                  fontSize: 12,
                                                  color: AppColors.fenceGreen),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, bottom: 18),
                                        child: Text(
                                          mainProvider.selectedCategories
                                                  .savingGoal ??
                                              '\$1,962.93',
                                          style: AppTextStyles.bold(
                                              fontSize: 24,
                                              color: AppColors.lettersAndIcons),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(AppImages.expenseIcon),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              'Amount Saved',
                                              style: AppTextStyles.regular(
                                                  fontSize: 12,
                                                  color: AppColors.fenceGreen),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          mainProvider.selectedCategories
                                                  .amountSaved ??
                                              '\$653.31',
                                          style: AppTextStyles.bold(
                                              fontSize: 24,
                                              color: AppColors.caribbeanGreen),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 167,
                                    width: 169,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppColors.lightBlue,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CircularProgressBar(
                                            progressCircleWidth: 103,
                                            progressCircleHeight: 103,
                                            progressCircleValue: 0.3,
                                            progressCircleColor:
                                                AppColors.oceanBlue,
                                            progressCircleBackgroundColor:
                                                AppColors.honeydew,
                                            centerWidget: Image.asset(
                                              mainProvider.selectedCategories
                                                  .categoriesImage,
                                              scale: 4,
                                            )),
                                        Text(
                                          mainProvider.selectedCategories
                                              .categoriesName,
                                          style: AppTextStyles.medium(
                                              fontSize: 15,
                                              color: AppColors.honeydew),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: MoneyPercentageProgressBar(
                                  progressAmount: 20000,
                                  // For example: $14,000
                                  percentage: 30, // For example: 70%)
                                  secondColor: AppColors.caribbeanGreen,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.done, size: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                        '30% of your expenses, looks good.',
                                        style: AppTextStyles.regular(
                                            fontSize: 15,
                                            color: AppColors.fenceGreen)),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "April",
                                    style: AppTextStyles.medium(
                                        fontSize: 15,
                                        color: AppColors.lettersAndIcons),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.4),
                                      color: AppColors.caribbeanGreen,
                                    ),
                                    child: const Icon(
                                      Icons.calendar_month_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                itemCount: mainProvider
                                    .getCategoryDetailList(index: 0)
                                    .length,
                                itemBuilder: (context, index) {
                                  TransactionModel currentModel = mainProvider
                                      .getCategoryDetailList(index: 0)[index];
                                  return TransactionWidget(
                                      transactionModel: currentModel);
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "April",
                                      style: AppTextStyles.medium(
                                          fontSize: 15,
                                          color: AppColors.lettersAndIcons),
                                    ),
                                  ],
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.only(bottom: 35),
                                itemCount: mainProvider
                                    .getCategoryDetailList(index: 1)
                                    .length,
                                itemBuilder: (context, index) {
                                  TransactionModel currentModel = mainProvider
                                      .getCategoryDetailList(index: 1)[index];
                                  return TransactionWidget(
                                      transactionModel: currentModel);
                                },
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: size.width * 0.2,
                          child: GestureDetector(
                            onTap: () {
                              mainProvider.changeSubIndex(
                                  index: 3, pageName: "Categories");
                            },
                            child: Container(
                                height: 36,
                                width: 169,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.caribbeanGreen,
                                ),
                                child: Center(
                                  child: Text(
                                    "Add Saving",
                                    style: AppTextStyles.medium(
                                        fontSize: 15,
                                        color: AppColors.lettersAndIcons),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ));
    });
  }
}
