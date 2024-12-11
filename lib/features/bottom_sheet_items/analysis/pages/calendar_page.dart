import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return Container(
      height: size.height,
      width: size.width,
      color: AppColors.caribbeanGreen,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        mainProvider.changeSubIndex(
                            index: 0, pageName: "Analysis");
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
                        child: Text('Calender',
                            style: AppTextStyles.semiBold(
                                fontSize: 20, color: AppColors.fenceGreen)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => mainProvider.changeSubIndex(
                          index: 1, pageName: "Analysis"),
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.lightGreen,
                          child:
                              const Icon(Icons.notifications_none, size: 20)),
                    )
                  ],
                ),
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
          ))
        ],
      ),
    );
  }
}
