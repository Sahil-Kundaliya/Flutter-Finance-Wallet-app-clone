import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/home_page_transaction_widget.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      return Container(
        height: size.height,
        width: size.width,
        color: AppColors.caribbeanGreen,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            mainProvider.changeSubIndex(
                                index: 0, pageName: "Analysis");
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
                            child: Text('Calender',
                                style: AppTextStyles.semiBold(
                                    fontSize: 20, color: AppColors.fenceGreen)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => mainProvider.changeSubIndex(
                              index: 1, pageName: "Analysis"),
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
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.honeydew,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Image.asset(
                          AppImages.calendar,
                          height: 247,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                mainProvider.changeAnalysisPageCalendarIndex(
                                    index: 0);
                              },
                              child: Container(
                                height: 36,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: mainProvider.calendarIndex == 0
                                        ? AppColors.caribbeanGreen
                                        : AppColors.lightGreen,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  "Spend",
                                  style: AppTextStyles.medium(
                                      fontSize: 15,
                                      color: mainProvider.calendarIndex == 0
                                          ? AppColors.lettersAndIcons
                                          : AppColors.cyprus),
                                )),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                mainProvider.changeAnalysisPageCalendarIndex(
                                    index: 1);
                              },
                              child: Container(
                                height: 36,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: mainProvider.calendarIndex == 1
                                        ? AppColors.caribbeanGreen
                                        : AppColors.lightGreen,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  "Categories",
                                  style: AppTextStyles.medium(
                                      fontSize: 15,
                                      color: mainProvider.calendarIndex == 1
                                          ? AppColors.lettersAndIcons
                                          : AppColors.cyprus),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      mainProvider.calendarIndex == 0
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 25, left: 20, right: 20),
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                itemCount: allHomepageTransaction.length,
                                itemBuilder: (context, index) {
                                  return TransactionWidget(
                                      transactionModel:
                                          allHomepageTransaction[index]);
                                },
                              ),
                            )
                          : Image.asset(
                              AppImages.categoriesChart,
                              height: 200,
                              width: 300,
                            )
                    ],
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
