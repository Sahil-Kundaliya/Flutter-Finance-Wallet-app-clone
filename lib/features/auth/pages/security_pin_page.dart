import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_cubit.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/new_password_page.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/sign_up_page.dart';
import 'package:finance_wallet_app_clone/features/auth/widgets/custom_pin_input.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecurityPinPage extends StatelessWidget {
  const SecurityPinPage({super.key});

  static const String securityPinPage = '/SecurityPinPage';

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
                  child: Text(
                    'Security pin',
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Enter security pin',
                              style: AppTextStyles.semiBold(
                                  fontSize: 20, color: AppColors.cyprus),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: CustomPinInput(
                            onChanged: (pin) {
                              // Handle pin changes
                              print('PIN changed: $pin');
                            },
                            onCompleted: (pin) {
                              // Handle when all digits are entered
                              print('PIN completed: $pin');
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                  context, NewPasswordPage.newPasswordPage),
                              child: Container(
                                height: 40,
                                width: 207,
                                decoration: BoxDecoration(
                                    color: AppColors.caribbeanGreen,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Accept',
                                    style: AppTextStyles.semiBold(
                                        fontSize: 20,
                                        color: AppColors.lettersAndIcons),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                  context, NewPasswordPage.newPasswordPage),
                              child: Container(
                                height: 45,
                                width: 207,
                                decoration: BoxDecoration(
                                    color: AppColors.lightGreen,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'Send Again',
                                    style: AppTextStyles.semiBold(
                                        fontSize: 20,
                                        color: AppColors.lettersAndIcons),
                                  ),
                                ),
                              ),
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
                          padding: const EdgeInsets.only(top: 12, bottom: 45),
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
                ),
              ))
            ],
          ),
        );
      }),
    );
  }
}
