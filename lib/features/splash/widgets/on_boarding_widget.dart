import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key, required this.itemImage});

  final String itemImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          radius: 124,
          backgroundColor: AppColors.lightGreen,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Image.asset(itemImage),
        )
      ],
    );
  }
}
