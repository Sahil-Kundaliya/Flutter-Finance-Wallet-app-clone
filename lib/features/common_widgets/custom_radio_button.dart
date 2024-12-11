import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {super.key,
      required this.mainCircle,
      required this.secondCircle,
      required this.isSelected});

  double mainCircle, secondCircle;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainCircle,
      width: mainCircle,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: mainCircle,
              width: mainCircle,
              child: CircularProgressIndicator(
                value: 100,
                strokeWidth: 1,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.caribbeanGreen),
              ),
            ),
          ),
          Center(
            child: Container(
              height: secondCircle,
              width: secondCircle,
              decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.caribbeanGreen
                      : AppColors.transparentColor,
                  borderRadius: BorderRadius.circular(secondCircle / 2)),
              child: isSelected
                  ? null
                  : CircularProgressIndicator(
                      value: 20,
                      strokeWidth: 1,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.caribbeanGreen),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
