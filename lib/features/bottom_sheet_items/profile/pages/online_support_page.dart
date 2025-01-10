import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/model/online_support_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/pages/support_chat_page.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class OnlineSupportScreen extends StatelessWidget {
  const OnlineSupportScreen({super.key});
  static const String onlineSupportScreen = '/onlineSupportScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final mainProvider = context.read<MainCubit>();
    return Scaffold(
      backgroundColor: AppColors.caribbeanGreen,
      body: BlocBuilder<MainCubit, MainState>(builder: (context, state) {
        return Column(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
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
                        child: Text('Online Support',
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
                    Text('Active Chats',
                        style: AppTextStyles.medium(
                          fontSize: 15,
                          color: AppColors.lettersAndIcons,
                        )),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 70,
                            width: size.width,
                            decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(14)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: AppColors.caribbeanGreen,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Center(
                                          child: Icon(
                                        Icons.support_agent_rounded,
                                        color: AppColors.lettersAndIcons,
                                        size: 28,
                                      )),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(allActiveChats[index].title,
                                            style: AppTextStyles.medium(
                                                fontSize: 15,
                                                color: AppColors.cyprus)),
                                        Text(allActiveChats[index].subTitle,
                                            style: AppTextStyles.light(
                                                fontSize: 13,
                                                color:
                                                    AppColors.lettersAndIcons)),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: AppColors.honeydew,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5,
                                                        vertical: 1),
                                                child: Text(
                                                    allActiveChats[index].time,
                                                    style: AppTextStyles.light(
                                                        fontSize: 12,
                                                        color: AppColors
                                                            .lettersAndIcons)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: allActiveChats.length),
                    Text('Ended Chats',
                        style: AppTextStyles.medium(
                          fontSize: 15,
                          color: AppColors.lettersAndIcons,
                        )),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 70,
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: AppColors.lightGreen,
                                  borderRadius: BorderRadius.circular(14)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: AppColors.caribbeanGreen,
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Center(
                                            child: Icon(
                                          Icons.support_agent_rounded,
                                          color: AppColors.lettersAndIcons,
                                          size: 28,
                                        )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(allEndedChats[index].title,
                                              style: AppTextStyles.medium(
                                                  fontSize: 15,
                                                  color: AppColors.cyprus)),
                                          Text(allEndedChats[index].subTitle,
                                              style: AppTextStyles.light(
                                                  fontSize: 13,
                                                  color: AppColors
                                                      .lettersAndIcons)),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 2),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.honeydew,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 5,
                                                      vertical: 1),
                                                  child: Text(
                                                      allEndedChats[index].time,
                                                      style: AppTextStyles.light(
                                                          fontSize: 12,
                                                          color: AppColors
                                                              .lettersAndIcons)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: allEndedChats.length)
                  ],
                ),
              ),
            ))
          ],
        );
      }),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(SupportChatScreen.supportChatScreen);
          },
          label: Text(
            'Start Another Chat ',
            style: AppTextStyles.medium(
                fontSize: 15, color: AppColors.lettersAndIcons),
          ),
          elevation: 0,
          backgroundColor: AppColors.caribbeanGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Increased border radius
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
