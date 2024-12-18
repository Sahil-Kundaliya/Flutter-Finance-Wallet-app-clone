import 'package:finance_wallet_app_clone/features/common_widgets/custom_text_field.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_images.dart';
import '../../../../constant/app_text_styles.dart';
import '../widgets/custom_toggle_switch.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
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
                      mainProvider.changeSubIndex(
                          index: 0, pageName: "Categories");
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
                      child: Text('Edit Profile',
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
                        child: const Icon(Icons.notifications_none, size: 20)),
                  )
                ],
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        color: AppColors.honeydew,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(65),
                            topRight: Radius.circular(65))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          Text(
                            "John Smith",
                            style: AppTextStyles.bold(
                                fontSize: 20, color: AppColors.cyprus),
                          ),
                          RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "ID: ",
                                style: AppTextStyles.bold(
                                    fontSize: 13,
                                    color: AppColors.lettersAndIcons)),
                            TextSpan(
                                text: "25030024",
                                style: AppTextStyles.light(
                                    fontSize: 13,
                                    color: AppColors.lettersAndIcons)),
                          ])),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Account Settings',
                                    style: AppTextStyles.semiBold(
                                        fontSize: 20,
                                        color: AppColors.lettersAndIcons),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: CustomTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      title: "Username",
                                      titleStyle: AppTextStyles.medium(
                                          fontSize: 15,
                                          color: AppColors.lettersAndIcons),
                                      textFieldHintText: "John Smith",
                                      textFieldHintTextStyle:
                                          AppTextStyles.light(
                                              fontSize: 13,
                                              color: AppColors.lettersAndIcons),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: CustomTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      title: "Phone",
                                      titleStyle: AppTextStyles.medium(
                                          fontSize: 15,
                                          color: AppColors.lettersAndIcons),
                                      textFieldHintText: "+44 555 5555 55",
                                      textFieldHintTextStyle:
                                          AppTextStyles.light(
                                              fontSize: 13,
                                              color: AppColors.lettersAndIcons),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: CustomTextField(
                                      textEditingController:
                                          TextEditingController(),
                                      title: "Email Address",
                                      titleStyle: AppTextStyles.medium(
                                          fontSize: 15,
                                          color: AppColors.lettersAndIcons),
                                      textFieldHintText: "example@example.com",
                                      textFieldHintTextStyle:
                                          AppTextStyles.light(
                                              fontSize: 13,
                                              color: AppColors.lettersAndIcons),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 8, right: 8),
                                    child: CustomToggleSwitch(
                                      onTap: () {
                                        mainProvider.changeToggle(index: 0);
                                      },
                                      title: "Push Notifications",
                                      toggleSwitch:
                                          mainProvider.pushNotificationsToggled,
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 8, right: 8),
                                      child: CustomToggleSwitch(
                                        onTap: () {
                                          mainProvider.changeToggle(index: 1);
                                        },
                                        title: "Turn Dark Theme",
                                        toggleSwitch: mainProvider.themeToggled,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: const AssetImage(AppImages.profileImage),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.caribbeanGreen,
                          child: const Icon(Icons.camera_alt, size: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      );
    });
  }
}
