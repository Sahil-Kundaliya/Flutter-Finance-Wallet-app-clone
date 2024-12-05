import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_cubit.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/password_status_page.dart';
import 'package:finance_wallet_app_clone/features/common_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  static const String newPasswordPage = '/NewPasswordPage';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.caribbeanGreen,
      body: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        final authProvider = context.read<AuthCubit>();
        return SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.21,
                child: Center(
                  child: Text('New password',
                      style: AppTextStyles.semiBold(
                          fontSize: 30, color: AppColors.lettersAndIcons)),
                ),
              ),
              Expanded(
                  child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                    color: AppColors.honeydew),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 65),
                          child: CustomTextField(
                              textEditingController:
                                  authProvider.newPasswordController,
                              title: 'New Password',
                              textFieldHintText: '● ● ● ● ● ● ● ●',
                              icon1: Icons.remove_red_eye,
                              icon2: Icons.panorama_fish_eye,
                              hideText: authProvider.newPasswordView,
                              icons1Click: () => authProvider
                                  .changeSignInPasswordView(index: 3)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: CustomTextField(
                              textEditingController:
                                  authProvider.newConfirmPasswordController,
                              title: 'Confirm New Password',
                              textFieldHintText: '● ● ● ● ● ● ● ●',
                              icon1: Icons.remove_red_eye,
                              icon2: Icons.panorama_fish_eye,
                              hideText: authProvider.newConfirmPasswordView,
                              icons1Click: () => authProvider
                                  .changeSignInPasswordView(index: 4)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(context,
                                  PasswordStatusPage.passwordStatusPage),
                              child: Container(
                                height: 40,
                                width: 307,
                                decoration: BoxDecoration(
                                    color: AppColors.caribbeanGreen,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text('Change Password',
                                      style: AppTextStyles.semiBold(
                                          fontSize: 20,
                                          color: AppColors.lettersAndIcons)),
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
}
