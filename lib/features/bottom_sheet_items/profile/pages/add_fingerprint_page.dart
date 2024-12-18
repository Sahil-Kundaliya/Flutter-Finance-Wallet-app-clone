import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/successful_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class AddFingerprintScreen extends StatelessWidget {
  const AddFingerprintScreen({super.key});

  static const String addFingerprintScreen = '/AddFingerprintScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      return Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color: AppColors.caribbeanGreen,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
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
                        child: Text('Add Fingerprint',
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
              Expanded(
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: AppColors.honeydew,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(65),
                          topRight: Radius.circular(65))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: AppColors.caribbeanGreen,
                          child: Icon(
                            Icons.fingerprint,
                            size: 100,
                            color: AppColors.honeydew,
                          ),
                        ),
                        Text('Use fingerprint to access',
                            style: AppTextStyles.semiBold(
                                fontSize: 20, color: AppColors.cyprus)),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.leagueSpartan(
                                fontWeight: FontWeight.w400, // Regular
                                fontSize: 14,
                                color: AppColors.cyprus)),
                        GestureDetector(
                          onTap: () {
                            mainProvider.changeSuccessfulPageState(
                                nextStatus:
                                    "fingerprint Has been\nChanged successfully");
                            Navigator.pop(context);
                            Navigator.pushNamed(
                                context, SuccessfulScreen.successfulScreen);
                          },
                          child: Container(
                            height: 41,
                            width: 356,
                            decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(18)),
                            child: Center(
                              child: Text(
                                'Use Touch Id',
                                style: AppTextStyles.semiBold(
                                    fontSize: 20, color: AppColors.cyprus),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
