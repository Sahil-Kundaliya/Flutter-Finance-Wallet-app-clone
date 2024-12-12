import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/notification_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/home_page_transaction_widget.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/money_percentage_progressbar.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/notification_widget.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountBalanceScreen extends StatelessWidget {
  const AccountBalanceScreen({super.key});

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
              Container(
                child: Padding(
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
                              'Account Balance',
                              style: AppTextStyles.semiBold(
                                  fontSize: 20,
                                  color: AppColors.lettersAndIcons),
                            ))),
                            CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColors.lightGreen,
                                child: const Icon(Icons.notifications_none,
                                    size: 20))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: MoneyPercentageProgressBar(
                              progressAmount: 20000, // For example: $14,000
                              percentage: 30 // For example: 70%)
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.honeydew,
                                      borderRadius:
                                          BorderRadius.circular(14.5)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
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
                                          '\$4,000.00',
                                          style: AppTextStyles.semiBold(
                                              fontSize: 20,
                                              color: AppColors.lettersAndIcons),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.honeydew,
                                      borderRadius:
                                          BorderRadius.circular(14.5)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
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
                                          '\$1.187.40',
                                          style: AppTextStyles.semiBold(
                                              fontSize: 20,
                                              color: AppColors.lettersAndIcons),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              const Icon(Icons.done, size: 15),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text('30% of your expenses, looks good.',
                                    style: AppTextStyles.regular(
                                        fontSize: 15,
                                        color: AppColors.fenceGreen)),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              Expanded(
                  child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.honeydew,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Transactions',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: AppColors.lettersAndIcons),
                            ),
                            Text(
                              'See all',
                              style: GoogleFonts.leagueSpartan(
                                  fontWeight: FontWeight.w400, // Regula
                                  fontSize: 14,
                                  color: AppColors.lettersAndIcons),
                            ),
                          ],
                        ),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: allHomepageTransaction.length,
                          itemBuilder: (context, index) {
                            return TransactionWidget(
                              transactionModel: allHomepageTransaction[index],
                            );
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
