import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_images.dart';
import '../../../../constant/app_text_styles.dart';
import '../../../main/cubits/main_cubit.dart';
import '../../home/models/transaction_model.dart';
import '../../home/widgets/home_page_transaction_widget.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

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
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Transaction',
                              style: AppTextStyles.semiBold(
                                  fontSize: 20, color: AppColors.fenceGreen)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => mainProvider.changeSubIndex(
                            index: 1, pageName: "Transactions"),
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.lightGreen,
                            child:
                                const Icon(Icons.notifications_none, size: 20)),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Container(
                      height: 75,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: AppColors.honeydew,
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Total Balance',
                            style: AppTextStyles.medium(
                                fontSize: 15, color: AppColors.lettersAndIcons),
                          ),
                          Text(
                            '\$7,783.00',
                            style: AppTextStyles.bold(
                                fontSize: 24, color: AppColors.lettersAndIcons),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (mainProvider.transactionId != 1) {
                                mainProvider.changeTransactionId(index: 1);
                              } else {
                                mainProvider.changeTransactionId(index: 0);
                              }
                            },
                            behavior: HitTestBehavior.opaque,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: mainProvider.transactionId == 1
                                      ? AppColors.oceanBlue
                                      : AppColors.honeydew,
                                  borderRadius: BorderRadius.circular(14.5)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      AppImages.incomeIcon,
                                      color: mainProvider.transactionId == 1
                                          ? AppColors.honeydew
                                          : AppColors.caribbeanGreen,
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text(
                                      'Income',
                                      style: AppTextStyles.medium(
                                          fontSize: 15,
                                          color: mainProvider.transactionId == 1
                                              ? AppColors.honeydew
                                              : AppColors.lettersAndIcons),
                                    ),
                                    Text(
                                      '\$4,000.00',
                                      style: AppTextStyles.semiBold(
                                          fontSize: 20,
                                          color: mainProvider.transactionId == 1
                                              ? AppColors.honeydew
                                              : AppColors.lettersAndIcons),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (mainProvider.transactionId != 2) {
                                mainProvider.changeTransactionId(index: 2);
                              } else {
                                mainProvider.changeTransactionId(index: 0);
                              }
                            },
                            behavior: HitTestBehavior.opaque,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: mainProvider.transactionId == 2
                                      ? AppColors.oceanBlue
                                      : AppColors.honeydew,
                                  borderRadius: BorderRadius.circular(14.5)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      AppImages.expenseIcon,
                                      color: mainProvider.transactionId == 2
                                          ? AppColors.honeydew
                                          : AppColors.oceanBlue,
                                      width: 30,
                                      height: 30,
                                    ),
                                    Text(
                                      'Expense',
                                      style: AppTextStyles.medium(
                                          fontSize: 15,
                                          color: mainProvider.transactionId == 2
                                              ? AppColors.honeydew
                                              : AppColors.lettersAndIcons),
                                    ),
                                    Text(
                                      '\$1.187.40',
                                      style: AppTextStyles.semiBold(
                                          fontSize: 20,
                                          color: mainProvider.transactionId == 2
                                              ? AppColors.honeydew
                                              : AppColors.oceanBlue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  child: Icon(
                                    Icons.calendar_month_outlined,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: mainProvider.transactionId == 0
                                ? allHomepageTransaction.length
                                : mainProvider.transactionId == 1
                                    ? allIncomeTransaction.length
                                    : allExpenseTransaction.length,
                            itemBuilder: (context, index) {
                              TransactionModel currentModel =
                                  mainProvider.transactionId == 0
                                      ? allHomepageTransaction[index]
                                      : mainProvider.transactionId == 1
                                          ? allIncomeTransaction[index]
                                          : allExpenseTransaction[index];
                              return TransactionWidget(
                                  transactionModel: currentModel);
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "March",
                                style: AppTextStyles.medium(
                                    fontSize: 15,
                                    color: AppColors.lettersAndIcons),
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.only(bottom: 10),
                            itemCount: mainProvider.transactionId == 0
                                ? allHomepageTransaction.length
                                : mainProvider.transactionId == 1
                                    ? allIncomeTransaction.length
                                    : allExpenseTransaction.length,
                            itemBuilder: (context, index) {
                              TransactionModel currentModel =
                                  mainProvider.transactionId == 0
                                      ? allHomepageTransaction[index]
                                      : mainProvider.transactionId == 1
                                          ? allIncomeTransaction[index]
                                          : allExpenseTransaction[index];
                              return TransactionWidget(
                                  transactionModel: currentModel);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
