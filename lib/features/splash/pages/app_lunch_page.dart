import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/splash/cubits/splash_cubit.dart';
import 'package:finance_wallet_app_clone/features/splash/cubits/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LunchScreen extends StatelessWidget {
  const LunchScreen({super.key});

  static const String lunchScreen = '/LunchScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocBuilder<SplashCubit, SplashState>(builder: (context, state) {
        return Scaffold(
          body: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(color: AppColors.honeydew),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(),
                  child: SvgPicture.asset(
                    AppImages.splashVector,
                    color: AppColors.caribbeanGreen,
                  ),
                ),
                Text(
                  'FinWise',
                  style: AppTextStyles.semiBold(
                      fontSize: 52.14, color: AppColors.caribbeanGreen),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regular(
                      fontSize: 14, color: AppColors.primaryText),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 42),
                  child: Container(
                    height: 45,
                    width: 207,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.caribbeanGreen),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: AppTextStyles.semiBold(
                            fontSize: 20, color: AppColors.lettersAndIcons),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    height: 45,
                    width: 207,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.lightGreen),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: AppTextStyles.semiBold(
                            fontSize: 20, color: AppColors.cyprus),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold(
                        fontSize: 14, color: AppColors.lettersAndIcons),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
