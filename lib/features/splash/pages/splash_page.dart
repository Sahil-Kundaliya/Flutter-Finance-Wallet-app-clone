import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/splash/cubits/splash_cubit.dart';
import 'package:finance_wallet_app_clone/features/splash/cubits/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String splashScreen = '/SplashScreen';


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
            decoration: BoxDecoration(color: AppColors.darkGreen),
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
                  ),
                ),
                Text(
                  'FinWise',
                  style: AppTextStyles.semiBold(
                      fontSize: 52.14, color: AppColors.whiteColor),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
