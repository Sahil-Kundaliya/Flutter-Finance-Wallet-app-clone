import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';
import '../widgets/profile_item_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: AppColors.caribbeanGreen,
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            color: AppColors.caribbeanGreen,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text('Profile',
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
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      spacing: 30,
                                      children: [
                                        ProfileItemWidget(
                                          itemIcon: Icons.person,
                                          itemText: "Edit Profile",
                                          onTap: () {
                                            mainProvider.changeSubIndex(
                                                index: 2,
                                                pageName: "Categories");
                                          },
                                        ),
                                        ProfileItemWidget(
                                          itemIcon:
                                              Icons.verified_user_outlined,
                                          itemText: "Security",
                                          onTap: () {
                                            mainProvider.changeSubIndex(
                                                index: 3,
                                                pageName: "Categories");
                                          },
                                        ),
                                        ProfileItemWidget(
                                          itemIcon: Icons.settings,
                                          itemText: "Setting",
                                          onTap: () {
                                            mainProvider.changeSubIndex(
                                                index: 4,
                                                pageName: "Categories");
                                          },
                                        ),
                                        ProfileItemWidget(
                                          itemIcon: Icons.support_agent_sharp,
                                          itemText: "Help",
                                          onTap: () {
                                            mainProvider.changeSubIndex(
                                                index: 5,
                                                pageName: "Categories");
                                          },
                                        ),
                                        ProfileItemWidget(
                                          itemIcon: Icons.login_outlined,
                                          itemText: "Logout",
                                          onTap: () {
                                            showCustomDialog(context);
                                          },
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(AppImages.profileImage),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    });
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 18,
                children: [
                  Text(
                    "End Session",
                    style: AppTextStyles.bold(
                        fontSize: 20, color: AppColors.cyprus),
                  ),
                  Text(
                    "Are you sure you want to log out?",
                    style: AppTextStyles.medium(
                        fontSize: 15, color: AppColors.blackColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.caribbeanGreen),
                      child: Center(
                        child: Text(
                          'Yes, End Session',
                          style: AppTextStyles.medium(
                              fontSize: 15, color: AppColors.lettersAndIcons),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.lightGreen),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: AppTextStyles.medium(
                              fontSize: 15, color: AppColors.cyprus),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
