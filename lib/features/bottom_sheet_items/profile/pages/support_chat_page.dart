import 'package:finance_wallet_app_clone/features/bottom_sheet_items/profile/model/chat_message_model.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class SupportChatScreen extends StatelessWidget {
  const SupportChatScreen({super.key});
  static const String supportChatScreen = '/supportChatScreen';

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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                        color: mainProvider.helpCenterIndex == 0
                                            ? AppColors.caribbeanGreen
                                            : AppColors.transparentColor,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: Center(
                                      child: Text("Support Assistant",
                                          style: AppTextStyles.semiBold(
                                              fontSize: 15,
                                              color:
                                                  AppColors.lettersAndIcons)),
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
                                        color: mainProvider.helpCenterIndex == 1
                                            ? AppColors.caribbeanGreen
                                            : AppColors.transparentColor,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: Center(
                                      child: Text("Help Center",
                                          style: AppTextStyles.semiBold(
                                              fontSize: 15,
                                              color:
                                                  AppColors.lettersAndIcons)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.builder(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            itemBuilder: (context, index) {
                              ChatMessageModel chatMessage =
                                  allChatMessages[index];
                              return Padding(
                                padding: EdgeInsets.only(
                                    top: 10,
                                    left: chatMessage.isSender ? 25 : 0,
                                    right: chatMessage.isSender ? 0 : 25),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: chatMessage.isSender
                                      ? CrossAxisAlignment.end
                                      : CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: chatMessage.isSender
                                              ? AppColors.caribbeanGreen
                                              : AppColors.lightGreen,
                                          borderRadius:
                                              BorderRadius.circular(48)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: Text(chatMessage.message,
                                            style: AppTextStyles.light(
                                                fontSize: 13,
                                                color:
                                                    AppColors.lettersAndIcons)),
                                      ),
                                    ),
                                    if (chatMessage.time != null)
                                      Text(chatMessage.time!,
                                          style: AppTextStyles.light(
                                              fontSize: 10,
                                              color:
                                                  AppColors.lettersAndIcons)),
                                  ],
                                ),
                              );
                            },
                            itemCount: allChatMessages.length),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Container(
                          height: 53,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: AppColors.caribbeanGreen,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightGreen,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      size: 28,
                                      color: AppColors.lettersAndIcons,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: TextEditingController(),
                                    style: const TextStyle(
                                        color: Colors.black), // Text color
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 15),
                                      hintText: "Write here...",
                                      hintStyle: AppTextStyles.light(
                                          color: AppColors.lettersAndIcons,
                                          fontSize: 13),
                                      // Hint text color
                                      filled: true,
                                      fillColor: AppColors.lightGreen,
                                      // Background color

                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.5),
                                        // Circular border
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: AppColors.lightGreen,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.mic,
                                      size: 28,
                                      color: AppColors.lettersAndIcons,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightGreen,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.send,
                                    size: 28,
                                    color: AppColors.lettersAndIcons,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        );
      }),
    );
  }
}
