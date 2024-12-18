import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_images.dart';
import '../../../../constant/app_text_styles.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  static const String successfulScreen = '/SuccessfulScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pop(context);
    });

    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: AppColors.caribbeanGreen,
        body: SizedBox(
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
                    context.read<MainCubit>().successfulPageState,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold(
                        fontSize: 20, color: AppColors.lightGreen),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
