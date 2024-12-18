import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                        child: Text('Settings',
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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 55,
                        ),
                        GestureDetector(
                          onTap: () {},
                          behavior: HitTestBehavior.opaque,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.caribbeanGreen,
                                    child: const Icon(Icons.notifications_none,
                                        size: 20)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Notification Settings',
                                    style: AppTextStyles.medium(fontSize: 16),
                                  ),
                                ),
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          behavior: HitTestBehavior.opaque,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.caribbeanGreen,
                                    child: const Icon(Icons.key, size: 20)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Password Settings',
                                    style: AppTextStyles.medium(fontSize: 16),
                                  ),
                                ),
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          behavior: HitTestBehavior.opaque,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.caribbeanGreen,
                                    child: const Icon(Icons.notifications_none,
                                        size: 20)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Delete Account',
                                    style: AppTextStyles.medium(fontSize: 16),
                                  ),
                                ),
                                const Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                    ),
                                  ),
                                )
                              ],
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
