import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/successful_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';
import '../../../common_widgets/custom_text_field.dart';

class PasswordSettingsScreen extends StatelessWidget {
  const PasswordSettingsScreen({super.key});

  static const String passwordSettingsScreen = '/PasswordSettingsScreen';

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
                        child: Text('Password Settings',
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      CustomTextField(
                        textEditingController: TextEditingController(),
                        title: "Current Password",
                        textFieldHintText: "● ● ● ● ● ● ● ●",
                        icon1: Icons.remove_red_eye,
                        icon2: Icons.remove_red_eye,
                        iconColor1: AppColors.cyprus,
                        iconColor2: AppColors.cyprus,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CustomTextField(
                          textEditingController: TextEditingController(),
                          title: "New Password",
                          textFieldHintText: "● ● ● ● ● ● ● ●",
                          icon1: Icons.remove_red_eye,
                          icon2: Icons.remove_red_eye,
                          iconColor1: AppColors.cyprus,
                          iconColor2: AppColors.cyprus,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CustomTextField(
                          textEditingController: TextEditingController(),
                          title: "Confirm New Password",
                          textFieldHintText: "● ● ● ● ● ● ● ●",
                          icon1: Icons.remove_red_eye,
                          icon2: Icons.remove_red_eye,
                          iconColor1: AppColors.cyprus,
                          iconColor2: AppColors.cyprus,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 55),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              mainProvider.changeSuccessfulPageState(
                                  nextStatus:
                                      'Password Has been\nChanged successfully');
                              Navigator.pop(context);
                              Navigator.pushNamed(
                                  context, SuccessfulScreen.successfulScreen);
                            },
                            child: Container(
                              height: 35,
                              width: 218,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.caribbeanGreen),
                              child: Center(
                                child: Text(
                                  "Change Password",
                                  style: AppTextStyles.medium(
                                      fontSize: 15,
                                      color: AppColors.lettersAndIcons),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
