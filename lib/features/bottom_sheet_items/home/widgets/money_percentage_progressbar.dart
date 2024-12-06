import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class MoneyPercentageProgressBar extends StatelessWidget {
  final double progressAmount; // Amount for the progress (e.g., $20,000)
  final double percentage; // Percentage for the progress (e.g., 30%)

  MoneyPercentageProgressBar({
    required this.progressAmount,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(13.5),
      ),
      child: Stack(
        children: [
          // Progress bar background
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.5),
                gradient: LinearGradient(
                  colors: [AppColors.fenceGreen, AppColors.honeydew],
                  stops: [percentage / 100, percentage / 100],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          // Money label (on the left side)
          Positioned(
            right: 10,
            top: 5,
            child: Text(
              '\$${progressAmount.toStringAsFixed(2)}',
              style: AppTextStyles.medium(
                  fontSize: 13, color: AppColors.voidColor),
            ),
          ),
          // Percentage label (on the right side)
          Positioned(
            left: 10,
            top: 5,
            child: Text(
              '${percentage.toStringAsFixed(0)}%',
              style: AppTextStyles.regular(
                  fontSize: 12, color: AppColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
