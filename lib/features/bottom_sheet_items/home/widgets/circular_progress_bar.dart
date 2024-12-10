import 'package:flutter/material.dart';

class CircularProgressBar extends StatelessWidget {
  CircularProgressBar({
    required this.progressCircleHeight,
    required this.progressCircleWidth,
    required this.progressCircleValue,
    required this.progressCircleColor,
    required this.progressCircleBackgroundColor,
    this.centerWidget,
  });

  final double progressCircleHeight;
  final double progressCircleWidth;
  final double progressCircleValue;
  final Color progressCircleColor;
  final Color progressCircleBackgroundColor;
  final Widget? centerWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: progressCircleHeight, // Total height of the progress circle
          width: progressCircleWidth, // Total width of the progress circle
          child: CircularProgressIndicator(
              value: progressCircleValue,
              strokeWidth: 4.0,
              // Width of the progress circle
              valueColor: AlwaysStoppedAnimation<Color>(progressCircleColor),
              // Blue color for the completed part
              backgroundColor:
                  progressCircleBackgroundColor // Remove default background color
              ),
        ),
        // Icon in the center
        centerWidget ?? SizedBox(),
      ],
    );
  }
}
