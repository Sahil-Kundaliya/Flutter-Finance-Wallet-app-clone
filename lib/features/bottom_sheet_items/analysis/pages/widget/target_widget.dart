import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/circular_progress_bar.dart';
import 'package:flutter/material.dart';

class TargetWidget extends StatelessWidget {
  const TargetWidget(
      {super.key,
      required this.title,
      required this.centerTitle,
      required this.progressCircleValue});

  final String centerTitle, title;
  final double progressCircleValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightBlue, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularProgressBar(
              progressCircleWidth: 103,
              progressCircleHeight: 103,
              progressCircleValue: progressCircleValue,
              progressCircleColor: AppColors.oceanBlue,
              progressCircleBackgroundColor: AppColors.honeydew,
              centerWidget: Text(
                centerTitle,
                style: AppTextStyles.semiBold(
                    fontSize: 20, color: AppColors.honeydew),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: AppTextStyles.medium(
                    fontSize: 15, color: AppColors.honeydew),
              ),
            )
          ],
        ),
      ),
    );
  }
}
