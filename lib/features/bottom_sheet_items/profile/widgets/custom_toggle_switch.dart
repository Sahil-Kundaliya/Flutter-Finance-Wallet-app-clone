import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';

class CustomToggleSwitch extends StatelessWidget {
  const CustomToggleSwitch(
      {super.key,
      required this.onTap,
      required this.title,
      required this.toggleSwitch});

  final VoidCallback onTap;
  final String title;
  final bool toggleSwitch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.medium(
              fontSize: 15, color: AppColors.lettersAndIcons),
        ),
        Center(
          child: GestureDetector(
            onTap: onTap,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 15.0,
              width: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: toggleSwitch
                    ? AppColors.caribbeanGreen
                    : AppColors.lightGreen,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 300),
                    left: toggleSwitch ? 16.0 : 2.0,
                    child: Container(
                      height: 11.0,
                      width: 11.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
