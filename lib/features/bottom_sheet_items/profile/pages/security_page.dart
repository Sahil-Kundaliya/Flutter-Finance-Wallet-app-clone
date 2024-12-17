import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/change_pin_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/profile_fingerprint_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/terms_and_conditions_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return BlocBuilder<MainCubit, MainState>(builder: (context, state) {
      return Container(
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
                      mainProvider.changeSubIndex(
                          index: 0, pageName: "Categories");
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
                      child: Text('Security',
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
                        child: const Icon(Icons.notifications_none, size: 20)),
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Security",
                      style: AppTextStyles.semiBold(
                          fontSize: 20, color: AppColors.lettersAndIcons),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, ChangePinScreen.changePinScreen);
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Change pin",
                              style: AppTextStyles.medium(
                                  fontSize: 15,
                                  color: AppColors.lettersAndIcons),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 15),
                      child: Divider(
                        color: AppColors.lightGreen,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context,
                            ProfileFingerprintScreen.profileFingerprintScreen);
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "fingerprint",
                            style: AppTextStyles.medium(
                                fontSize: 15, color: AppColors.lettersAndIcons),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 15),
                      child: Divider(
                        color: AppColors.lightGreen,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context,
                            TermsAndConditionsScreen.termsAndConditionsScreen);
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Terms and conditions",
                            style: AppTextStyles.medium(
                                fontSize: 15, color: AppColors.lettersAndIcons),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      );
    });
  }
}
