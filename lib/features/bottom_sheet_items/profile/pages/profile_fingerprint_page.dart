import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/add_fingerprint_page.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/jhon_fingerprint_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';
import '../widgets/profile_item_widget.dart';

class ProfileFingerprintScreen extends StatelessWidget {
  const ProfileFingerprintScreen({super.key});

  static const String profileFingerprintScreen = '/ProfileFingerprintScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return Scaffold(
      body: BlocBuilder<MainCubit, MainState>(builder: (context, state) {
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
                        child: Text('Fingerprint',
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ProfileItemWidget(
                          itemIcon: Icons.fingerprint,
                          itemText: "John Fingerprint",
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context,
                                JhonFingerprintScreen.jhonFingerprintScreen);
                          },
                          showIcon: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ProfileItemWidget(
                          itemIcon: Icons.add,
                          itemText: "Add a fingerprint",
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context,
                                AddFingerprintScreen.addFingerprintScreen);
                          },
                          showIcon: true,
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
