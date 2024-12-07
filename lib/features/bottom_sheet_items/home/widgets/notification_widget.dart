import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key, required this.notificationModel});

  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            notificationModel.notificationImage != null
                ? Container(
                    height: 37,
                    width: 37,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            scale: 0.5,
                            image: AssetImage(
                                notificationModel.notificationImage!)),
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.caribbeanGreen),
                  )
                : Container(
                    height: 37,
                    width: 37,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.caribbeanGreen),
                    child: Icon(notificationModel.notificationIcon),
                  ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificationModel.notificationTitle,
                      style: AppTextStyles.medium(
                          fontSize: 14, color: AppColors.fenceGreen),
                    ),
                    Text(
                      notificationModel.notificationSubTitle,
                      maxLines: 3,
                      style: GoogleFonts.leagueSpartan(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.fenceGreen),
                    ),
                    if (notificationModel.notificationType != null)
                      Text(
                        notificationModel.notificationType!,
                        style: AppTextStyles.semiBold(
                            fontSize: 11, color: AppColors.oceanBlue),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '17:00 - April 24',
              style: AppTextStyles.light(
                  fontSize: 11.5, color: AppColors.oceanBlue),
            ),
          ],
        ),
        Divider(
          color: AppColors.caribbeanGreen,
        )
      ],
    );
  }
}
