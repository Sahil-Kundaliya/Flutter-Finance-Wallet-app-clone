import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/circular_progress_bar.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/home_page_transaction_widget.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuicklyAnalysisScreen extends StatelessWidget {
  const QuicklyAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      final mainProvider = context.read<MainCubit>();
      return Container(
        height: size.height,
        width: size.width,
        color: AppColors.caribbeanGreen,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              mainProvider.changeSubIndex(
                                  index: 0, pageName: "Home");
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
                            'Quickly Analysis',
                            style: AppTextStyles.semiBold(
                                fontSize: 20, color: AppColors.lettersAndIcons),
                          ))),
                          CircleAvatar(
                              radius: 15,
                              backgroundColor: AppColors.lightGreen,
                              child: const Icon(Icons.notifications_none,
                                  size: 20))
                        ],
                      ),
                      Container(
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(31),
                            color: AppColors.caribbeanGreen),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  CircularProgressBar(
                                    progressCircleHeight: 68,
                                    progressCircleWidth: 68,
                                    progressCircleValue: 0.5,
                                    progressCircleColor: AppColors.oceanBlue,
                                    progressCircleBackgroundColor:
                                        AppColors.honeydew,
                                    centerWidget: Image.asset(AppImages.carIcon,
                                        // Replace with your image path
                                        height: 21,
                                        width: 37),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Text('Savings\non goals',
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.medium(
                                            fontSize: 12,
                                            color: AppColors.lettersAndIcons)),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(AppImages.salaryIcon),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Revenue Last Week',
                                                style: AppTextStyles.regular(
                                                    fontSize: 12,
                                                    color:
                                                        AppColors.fenceGreen)),
                                            Text('\$4.000.00',
                                                style: AppTextStyles.bold(
                                                    fontSize: 15,
                                                    color:
                                                        AppColors.fenceGreen)),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        AppImages.foodIcon,
                                        scale: 6,
                                        color: AppColors.lettersAndIcons,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Food Last Week',
                                                style: AppTextStyles.regular(
                                                    fontSize: 12,
                                                    color:
                                                        AppColors.fenceGreen)),
                                            Text('-\$100.00',
                                                style: AppTextStyles.bold(
                                                    fontSize: 15,
                                                    color:
                                                        AppColors.oceanBlue)),
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
                    ],
                  )),
              Expanded(
                  child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.honeydew,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(AppImages.aprilExpensesChart),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: allHomepageTransaction.length,
                          itemBuilder: (context, index) {
                            return TransactionWidget(
                                transactionModel:
                                    allHomepageTransaction[index]);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      );
    });
  }
}
