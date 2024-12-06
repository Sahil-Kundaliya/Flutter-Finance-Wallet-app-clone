import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_cubit.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:finance_wallet_app_clone/features/main/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class FingerprintPage extends StatelessWidget {
  const FingerprintPage({super.key});

  static const String fingerprintPage = '/FingerprintPage';

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
                    'Security Fingerprint',
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 65),
                          child: CircleAvatar(
                            radius: 97,
                            backgroundColor: AppColors.caribbeanGreen,
                            child: Center(
                              child: Image.asset(AppImages.fingerprintIcon,
                                  height: 107, width: 112),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text('Use fingerprint to access',
                              style: AppTextStyles.semiBold(
                                  fontSize: 20, color: AppColors.cyprus)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.leagueSpartan(
                                  fontWeight: FontWeight.w400, // Regular
                                  fontSize: 14,
                                  color: AppColors.cyprus)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    MainScreen.mainScreen, (route) => false);
                              },
                              child: Container(
                                height: 40,
                                width: 307,
                                decoration: BoxDecoration(
                                    color: AppColors.lightGreen,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text('Use Touch Id',
                                      style: AppTextStyles.semiBold(
                                          fontSize: 20,
                                          color: AppColors.lettersAndIcons)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text('¿Or prefer use pin code?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.leagueSpartan(
                                  fontWeight: FontWeight.w300, // Regular
                                  fontSize: 13,
                                  color: AppColors.cyprus)),
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
