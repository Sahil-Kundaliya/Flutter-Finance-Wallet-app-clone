import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Container(
              height: 53,
              width: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                  color: transactionModel.imageColor),
              child: Center(
                child: Image.asset(
                  transactionModel.transactionImage,
                  color: AppColors.honeydew,
                  scale: 6,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transactionModel.transactionTitle,
                  style: AppTextStyles.medium(
                      fontSize: 15, color: AppColors.fenceGreen),
                ),
                Text(
                  transactionModel.transactionTime,
                  style: AppTextStyles.semiBold(
                      fontSize: 12, color: AppColors.oceanBlue),
                ),
              ],
            ),
          ),
          transactionModel.transactionType != null
              ? Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          height: 35,
                          width: 1.8,
                          color: AppColors.caribbeanGreen,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            transactionModel.transactionType!,
                            style: AppTextStyles.light(
                                fontSize: 13, color: AppColors.fenceGreen),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Container(
                          height: 35,
                          width: 1.8,
                          color: AppColors.caribbeanGreen,
                        ),
                      ),
                    ],
                  ),
                )
              : const Expanded(child: SizedBox()),
          Text(
            transactionModel.transactionAmount,
            style: AppTextStyles.medium(
                fontSize: 15,
                color: transactionModel.transactionAmount.contains('-')
                    ? AppColors.oceanBlue
                    : AppColors.fenceGreen),
          ),
        ],
      ),
    );
  }
}
