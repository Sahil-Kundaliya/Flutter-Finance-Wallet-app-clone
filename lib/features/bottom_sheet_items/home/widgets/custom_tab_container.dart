import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTabContainer extends StatelessWidget {
  const CustomTabContainer(
      {super.key,
      required this.title,
      required this.color,
      this.textStyle,
      this.onTap});

  final String title;
  final Color color;
  final TextStyle? textStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(19)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
              child: Text(title,
                  style: textStyle ??
                      AppTextStyles.regular(
                          fontSize: 15, color: AppColors.fenceGreen))),
        ),
      ),
    );
  }
}
