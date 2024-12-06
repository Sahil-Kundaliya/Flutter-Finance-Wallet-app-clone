import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:flutter/material.dart';

class HomePageTransactionWidget extends StatelessWidget {
  const HomePageTransactionWidget({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              height: 35,
              width: 1.8,
              color: AppColors.caribbeanGreen,
            ),
          ),
          Text(
            transactionModel.transactionType,
            style:
                AppTextStyles.light(fontSize: 13, color: AppColors.fenceGreen),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              height: 35,
              width: 1.8,
              color: AppColors.caribbeanGreen,
            ),
          ),
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
