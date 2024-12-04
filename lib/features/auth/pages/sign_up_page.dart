import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_cubit.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/sign_in_page.dart';
import 'package:finance_wallet_app_clone/features/common_widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  static const String signUpPage = '/SignUpPage';

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
                    'Create Account',
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
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: CustomTextField(
                                  textEditingController:
                                      authProvider.signUpNameController,
                                  title: 'Full name',
                                  textFieldHintText: 'Your name',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: CustomTextField(
                                  textEditingController:
                                      authProvider.signUpEmailController,
                                  title: 'Email',
                                  textFieldHintText: 'example@example.com',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: CustomTextField(
                                  textEditingController:
                                      authProvider.signUpNumberController,
                                  title: 'Mobile Number',
                                  textFieldHintText: '+ 123 456 789',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: CustomTextField(
                                  textEditingController:
                                      authProvider.signUpBODController,
                                  title: 'Date of birth',
                                  textFieldHintText: 'DD / MM /YYY',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: CustomTextField(
                                  textEditingController:
                                      authProvider.signUpPasswordController,
                                  title: 'Password',
                                  textFieldHintText: '● ● ● ● ● ● ● ●',
                                  icon1: Icons.remove_red_eye,
                                  icon2: Icons.panorama_fish_eye,
                                  hideText: authProvider.signUpPasswordView,
                                  icons1Click: () {
                                    authProvider.changeSignInPasswordView(
                                        index: 1);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: CustomTextField(
                                  textEditingController: authProvider
                                      .signUpConfirmPasswordController,
                                  title: 'Confirm Password',
                                  textFieldHintText: '● ● ● ● ● ● ● ●',
                                  icon1: Icons.remove_red_eye,
                                  icon2: Icons.panorama_fish_eye,
                                  hideText:
                                      authProvider.signUpConfirmPasswordView,
                                  icons1Click: () {
                                    authProvider.changeSignInPasswordView(
                                        index: 2);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'By continuing, you agree to\nTerms of Use and Privacy Policy.',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.semiBold(
                                        fontSize: 14,
                                        color: AppColors.lettersAndIcons),
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
                                        color: AppColors.caribbeanGreen,
                                        borderRadius:
                                            BorderRadius.circular(30)),
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
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 45),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Already have an account?',
                                          style: AppTextStyles.light(
                                              fontSize: 13,
                                              color:
                                                  AppColors.lettersAndIcons)),
                                      TextSpan(
                                          text: '  Log In',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pushReplacementNamed(
                                                  context,
                                                  SignInPage.signInPage);
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
