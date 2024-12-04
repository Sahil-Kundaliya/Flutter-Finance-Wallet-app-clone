import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_cubit.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/forgot_password_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/sign_up_page.dart';
import 'package:finance_wallet_app_clone/features/common_widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  static const String signInPage = '/SignInPage';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.caribbeanGreen,
      body: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        final authProvider = context.read<AuthCubit>();
        return Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height * 0.21,
                child: Center(
                  child: Text(
                    'Welcome',
                    style: AppTextStyles.semiBold(
                        fontSize: 30, color: AppColors.lettersAndIcons),
                  ),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: CustomTextField(
                          textEditingController:
                              authProvider.signInEmailController,
                          title: 'Username or email',
                          textFieldHintText: 'example@example.com',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: CustomTextField(
                          textEditingController:
                              authProvider.signInPasswordController,
                          title: 'Password',
                          textFieldHintText: '● ● ● ● ● ● ● ●',
                          icon1: Icons.remove_red_eye,
                          icon2: Icons.panorama_fish_eye,
                          hideText: authProvider.signInPasswordView,
                          icons1Click: () =>
                              authProvider.changeSignInPasswordView(index: 0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 55),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 45,
                            width: 207,
                            decoration: BoxDecoration(
                                color: AppColors.caribbeanGreen,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'Log In',
                                style: AppTextStyles.semiBold(
                                    fontSize: 20,
                                    color: AppColors.lettersAndIcons),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, ForgotPasswordPage.forgotPasswordPage),
                            child: Text(
                              'Forgot Password?',
                              style: AppTextStyles.semiBold(
                                  fontSize: 14,
                                  color: AppColors.lettersAndIcons),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 45,
                            width: 207,
                            decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: AppTextStyles.semiBold(
                                    fontSize: 20,
                                    color: AppColors.lettersAndIcons),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Use ',
                                  style: AppTextStyles.semiBold(
                                      fontSize: 14, color: AppColors.cyprus)),
                              TextSpan(
                                  text: 'Fingerprint ',
                                  style: AppTextStyles.semiBold(
                                      fontSize: 15,
                                      color: AppColors.oceanBlue)),
                              TextSpan(
                                  text: 'To Access',
                                  style: AppTextStyles.semiBold(
                                      fontSize: 14, color: AppColors.cyprus)),
                            ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 12),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'or sign up with',
                              style: AppTextStyles.light(
                                  fontSize: 13,
                                  color: AppColors.lettersAndIcons),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.authFacebook,
                            height: 32,
                            width: 32,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              AppImages.authGoogle,
                              height: 32,
                              width: 32,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Don’t have an account? ',
                                  style: AppTextStyles.light(
                                      fontSize: 13,
                                      color: AppColors.lettersAndIcons)),
                              TextSpan(
                                  text: 'Sign Up',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacementNamed(
                                          context, SignUpPage.signUpPage);
                                    },
                                  style: AppTextStyles.light(
                                      fontSize: 14,
                                      color: AppColors.oceanBlue)),
                            ]),
                          ),
                        ),
                      ),
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
