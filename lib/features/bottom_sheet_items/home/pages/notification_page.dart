import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/notification_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/notification_widget.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      final mainProvider = context.read<MainCubit>();
      return Container(
        height: size.height,
        width: size.width,
        color: AppColors.caribbeanGreen,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 10),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            mainProvider.changeSubIndex(
                                index: 0, pageName: "Home");
                            mainProvider.changeSubIndex(
                                index: 0, pageName: "Analysis");
                          },
                          constraints: const BoxConstraints(),
                          // Removes default constraints
                          padding: EdgeInsets.zero,
                          // Removes default padding
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.whiteColor,
                            size: 24,
                          ),
                        ),
                        Expanded(
                            child: Center(
                                child: Text(
                          'Notification',
                          style: AppTextStyles.semiBold(
                              fontSize: 20, color: AppColors.lettersAndIcons),
                        ))),
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.lightGreen,
                            child:
                                const Icon(Icons.notifications_none, size: 20))
                      ],
                    )),
              ),
              Expanded(
                  child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.honeydew,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: AppTextStyles.regular(
                              fontSize: 14, color: AppColors.fenceGreen),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: todayNotification.length,
                          itemBuilder: (context, index) {
                            return NotificationWidget(
                              notificationModel: todayNotification[index],
                            );
                          },
                        ),
                        Text(
                          'Yesterday',
                          style: AppTextStyles.regular(
                              fontSize: 14, color: AppColors.fenceGreen),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: yesterdayNotification.length,
                          itemBuilder: (context, index) {
                            return NotificationWidget(
                              notificationModel: yesterdayNotification[index],
                            );
                          },
                        ),
                        Text(
                          'This Weekend',
                          style: AppTextStyles.regular(
                              fontSize: 14, color: AppColors.fenceGreen),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: weekendNotification.length,
                          itemBuilder: (context, index) {
                            return NotificationWidget(
                              notificationModel: weekendNotification[index],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      );
    });
  }
}
