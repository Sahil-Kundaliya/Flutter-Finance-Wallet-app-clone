import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/widgets/custom_toggle_switch.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  static const String notificationSettingsScreen =
      '/NotificationSettingsScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return Scaffold(
      body: BlocBuilder<MainCubit, MainState>(builder: (context, state) {
        return Container(
          height: size.height,
          width: size.width,
          color: AppColors.caribbeanGreen,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
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
                        child: Text('Notification Settings',
                            style: AppTextStyles.semiBold(
                                fontSize: 20, color: AppColors.fenceGreen)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => mainProvider.changeSubIndex(
                          index: 1, pageName: "Categories"),
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.lightGreen,
                          child:
                              const Icon(Icons.notifications_none, size: 20)),
                    )
                  ],
                ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 55,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 2);
                              },
                              title: "General Notification",
                              toggleSwitch:
                                  mainProvider.generalNotificationToggled,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 3);
                              },
                              title: "Sound",
                              toggleSwitch: mainProvider.soundToggled,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 4);
                              },
                              title: "Sound Call",
                              toggleSwitch: mainProvider.soundCallToggled,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 5);
                              },
                              title: "Vibrate",
                              toggleSwitch: mainProvider.vibrateToggled,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 6);
                              },
                              title: "Transaction Update",
                              toggleSwitch:
                                  mainProvider.transactionUpdateToggled,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 7);
                              },
                              title: "Expense Reminder",
                              toggleSwitch: mainProvider.expenseReminderToggled,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 8);
                              },
                              title: "Budget Notifications",
                              toggleSwitch:
                                  mainProvider.budgetNotificationsToggled,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 8, right: 8),
                            child: CustomToggleSwitch(
                              onTap: () {
                                mainProvider.changeToggle(index: 9);
                              },
                              title: "Low Balance Alerts",
                              toggleSwitch:
                                  mainProvider.lowBalanceAlertsToggled,
                            )),
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        );
      }),
    );
  }
}
