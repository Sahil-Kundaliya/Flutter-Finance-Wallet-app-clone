import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

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
                      child: Text('Help & FAQS',
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
                    SizedBox(
                      height: 35,
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
