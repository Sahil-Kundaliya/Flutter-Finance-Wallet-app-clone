import 'package:finance_wallet_app_clone/features/common_widgets/custom_text_field.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  static const String deleteAccountScreen = '/DeleteAccountScreen';

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
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
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
                          child: Text('Delete Account',
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
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          'Are you sure you want to delete\nyour account?',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.medium(
                              fontSize: 15, color: AppColors.blackColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: size.width * 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: AppColors.lightGreen),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'This action will permanently delete all of your data, and you will not be able to recover it. Please keep the following in mind before proceeding:\n',
                                    style: AppTextStyles.light(
                                        fontSize: 13,
                                        color: AppColors.blackColor),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('•  '),
                                      Expanded(
                                        child: Text(
                                          'All your expenses, income and associated transactions will be eliminated.\n',
                                          style: AppTextStyles.light(
                                              fontSize: 13,
                                              color: AppColors.blackColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('•  '),
                                      Expanded(
                                        child: Text(
                                          'You will not be able to access your account or any related information.\n',
                                          style: AppTextStyles.light(
                                              fontSize: 13,
                                              color: AppColors.blackColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('•  '),
                                      Expanded(
                                        child: Text(
                                          'This action cannot be undone.',
                                          style: AppTextStyles.light(
                                              fontSize: 13,
                                              color: AppColors.blackColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 20),
                          child: Text(
                            'Please enter your password to confirm deletion of your account.',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.medium(
                                fontSize: 15, color: AppColors.lettersAndIcons),
                          ),
                        ),
                        CustomTextField(
                          textEditingController: TextEditingController(),
                          title: "",
                          textFieldHintText: "● ● ● ● ● ● ● ●",
                          icon1: Icons.remove_red_eye,
                          icon2: Icons.remove_red_eye,
                          iconColor1: AppColors.cyprus,
                          iconColor2: AppColors.cyprus,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            onTap: () {
                              showCustomDialog(context);
                            },
                            child: Container(
                              height: 45,
                              width: 218,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.caribbeanGreen),
                              child: Center(
                                child: Text(
                                  "Yes, Delete Account",
                                  style: AppTextStyles.medium(
                                    fontSize: 15,
                                    color: AppColors.lettersAndIcons,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 30),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 45,
                              width: 218,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.lightGreen),
                              child: Center(
                                child: Text(
                                  "Cancel",
                                  style: AppTextStyles.medium(
                                    fontSize: 15,
                                    color: AppColors.lettersAndIcons,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                    "Delete account",
                    style: AppTextStyles.bold(
                        fontSize: 20, color: AppColors.cyprus),
                  ),
                  Text(
                    "Are you sure you want to log out?",
                    style: AppTextStyles.medium(
                        fontSize: 15, color: AppColors.blackColor),
                  ),
                  Text(
                    "By deleting your account, you agree that you understand the consequences of this action and that you agree to permanently delete your account and all associated data.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.leagueSpartan(
                        fontWeight: FontWeight.w400, // Regular
                        fontSize: 17,
                        color: AppColors.blackColor),
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
                          'Yes, Delete Account',
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
