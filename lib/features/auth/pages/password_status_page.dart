import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_cubit.dart';
import 'package:finance_wallet_app_clone/features/auth/cubits/auth_state.dart';
import 'package:finance_wallet_app_clone/features/auth/pages/fingerprint_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordStatusPage extends StatelessWidget {
  const PasswordStatusPage({super.key});

  static const String passwordStatusPage = '/PasswordStatusPage';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    // Trigger navigation after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      context.read<AuthCubit>().navigateToFingerprint();
    });

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is NavigateToFingerprintState) {
          Navigator.pushReplacementNamed(
              context, FingerprintPage.fingerprintPage);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.caribbeanGreen,
        body: Container(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                true
                    ? Image.asset(
                        AppImages.authDoneIcon,
                        height: 142,
                        width: 142,
                      )
                    : Image.asset(
                        AppImages.authUndoneIcon,
                        height: 142,
                        width: 142,
                      ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Password Has been\nChanged successfully',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold(
                        fontSize: 20, color: AppColors.lightGreen),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
