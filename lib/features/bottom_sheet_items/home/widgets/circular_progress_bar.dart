import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:flutter/material.dart';

class CircularProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Red progress circle (remaining 50%)
        SizedBox(
          height: 68.0, // Total height of the progress circle
          width: 68.0, // Total width of the progress circle
          child: CircularProgressIndicator(
              value: 1.0,
              // Full circle (red part)
              strokeWidth: 4.0,
              // Width of the progress circle
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.honeydew),
              // Red color for the remaining part
              backgroundColor:
                  Colors.transparent // Remove default background color
              ),
        ),
        // Blue progress circle (completed 50%)
        SizedBox(
          height: 68.0, // Total height of the progress circle
          width: 68.0, // Total width of the progress circle
          child: CircularProgressIndicator(
              value: 0.5,
              // 50% progress (blue part)
              strokeWidth: 4.0,
              // Width of the progress circle
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.oceanBlue),
              // Blue color for the completed part
              backgroundColor:
                  Colors.transparent // Remove default background color
              ),
        ),
        // Icon in the center
        Image.asset(AppImages.carIcon, // Replace with your image path
            height: 21,
            width: 37),
      ],
    );
  }
}
