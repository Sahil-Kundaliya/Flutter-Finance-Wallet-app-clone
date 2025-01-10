import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/online_support_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';
import '../model/contact_item_model.dart';

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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('How can we help you?',
                                style: AppTextStyles.medium(
                                    fontSize: 15,
                                    color: AppColors.lettersAndIcons)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 27, left: 20, right: 20),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(22)),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: GestureDetector(
                                      onTap: () {
                                        mainProvider.changeHelpCenterIndex(
                                            helpIndex: 0);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: mainProvider
                                                        .helpCenterIndex ==
                                                    0
                                                ? AppColors.caribbeanGreen
                                                : AppColors.transparentColor,
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: Center(
                                          child: Text("FAQ",
                                              style: AppTextStyles.semiBold(
                                                  fontSize: 15,
                                                  color: AppColors
                                                      .lettersAndIcons)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: GestureDetector(
                                      onTap: () {
                                        mainProvider.changeHelpCenterIndex(
                                            helpIndex: 1);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: mainProvider
                                                        .helpCenterIndex ==
                                                    1
                                                ? AppColors.caribbeanGreen
                                                : AppColors.transparentColor,
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: Center(
                                          child: Text("Contact Us",
                                              style: AppTextStyles.semiBold(
                                                  fontSize: 15,
                                                  color: AppColors
                                                      .lettersAndIcons)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("General",
                                    style: AppTextStyles.regular(
                                        fontSize: 15,
                                        color: AppColors.fenceGreen)),
                                Text("Account",
                                    style: AppTextStyles.regular(
                                        fontSize: 15,
                                        color: AppColors.fenceGreen)),
                                Text("Sevices",
                                    style: AppTextStyles.regular(
                                        fontSize: 15,
                                        color: AppColors.fenceGreen)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: SizedBox(
                            height: 41, // Height of the TextFormField
                            child: TextFormField(
                              controller: TextEditingController(),
                              style: const TextStyle(
                                  color: Colors.black), // Text color
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 15),
                                hintText: "Search",
                                hintStyle: AppTextStyles.light(
                                    color: AppColors.lettersAndIcons,
                                    fontSize: 13),
                                // Hint text color
                                filled: true,
                                fillColor: AppColors.lightGreen,
                                // Background color
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.5),
                                  // Circular border
                                  borderSide: BorderSide(
                                    color: AppColors
                                        .caribbeanGreen, // Border color
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.5),
                                  // Circular border
                                  borderSide: BorderSide(
                                    color: AppColors.caribbeanGreen,
                                    // Border color
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.5),
                                  // Circular border
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: mainProvider.helpCenterIndex == 0
                              ? ListView.builder(
                                  itemCount: allFAQData.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(allFAQData[index],
                                              style: AppTextStyles.light(
                                                  fontSize: 14.4,
                                                  color: AppColors
                                                      .lettersAndIcons)),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color: AppColors.lettersAndIcons,
                                          size: 35,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              : ListView.builder(
                                  itemCount: allContactData.length,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                        Navigator.of(context).pushNamed(
                                            OnlineSupportScreen
                                                .onlineSupportScreen);
                                      }
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 20, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.caribbeanGreen,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              child: Center(
                                                  child: Icon(
                                                allContactData[index].icon,
                                                color:
                                                    AppColors.lettersAndIcons,
                                                size: 24,
                                              )),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                                allContactData[index].title,
                                                style: AppTextStyles.light(
                                                    fontSize: 14.4,
                                                    color: AppColors
                                                        .lettersAndIcons)),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: AppColors.lettersAndIcons,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
