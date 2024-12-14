import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class TransactionWithoutTypeWidget extends StatelessWidget {
  TransactionWithoutTypeWidget(
      {super.key,
      required this.boxColor,
      required this.image,
      required this.title,
      required this.time,
      required this.amount,
      this.imageColor,
      this.backgroundColor});

  final Color boxColor;
  Color? imageColor, backgroundColor;

  String image, title, time, amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: backgroundColor ?? AppColors.lightGreen),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
                    color: boxColor),
                child: Center(
                  child: Image.asset(
                    image,
                    scale: 7,
                    color: imageColor ?? AppColors.honeydew,
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
                    title,
                    style: AppTextStyles.medium(
                        fontSize: 15, color: AppColors.fenceGreen),
                  ),
                  Text(
                    time,
                    style: AppTextStyles.semiBold(
                        fontSize: 12, color: AppColors.oceanBlue),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Text(
              amount,
              style: AppTextStyles.medium(
                  fontSize: 15, color: AppColors.oceanBlue),
            ),
          ],
        ),
      ),
    );
  }
}
