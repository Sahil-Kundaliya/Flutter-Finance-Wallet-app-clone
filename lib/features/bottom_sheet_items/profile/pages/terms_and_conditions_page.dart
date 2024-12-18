import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  static const String termsAndConditionsScreen = '/TermsAndConditionsScreen';

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
                        child: Text('Terms And Conditions',
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
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          'Est fugiat assumenda aut reprehenderit\n',
                          style: AppTextStyles.medium(
                              fontSize: 14, color: AppColors.blackColor),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet. Et odio officia aut voluptate internos est omnis vitae ut architecto sunt non tenetur fuga ut provident vero. Quo aspernatur facere et consectetur ipsum et facere corrupti est asperiores facere. Est fugiat assumenda aut reprehenderit voluptatem sed.\n',
                          style: AppTextStyles.light(
                              fontSize: 13, color: AppColors.blackColor),
                        ),
                        Text(
                          '1. Ea voluptates omnis aut sequi sequi.\n2. Est dolore quae in aliquid ducimus et autem repellendus.\n3. Aut ipsum Quis qui porro quasi aut minus placeat!\n4. Sit consequatur neque ab vitae facere.\n',
                          style: AppTextStyles.light(
                              fontSize: 13, color: AppColors.blackColor),
                        ),
                        Text(
                          'Aut quidem accusantium nam alias autem eum officiis placeat et omnis autem id officiis perspiciatis qui corrupti officia eum aliquam provident. Eum voluptas error et optio dolorum cum molestiae nobis et odit molestiae quo magnam impedit sed fugiat nihil non nihil vitae.\n',
                          style: AppTextStyles.light(
                              fontSize: 13, color: AppColors.blackColor),
                        ),
                        Text(
                          '• Aut fuga sequi eum voluptatibus provident.\n• Eos consequuntur voluptas vel amet eaque aut dignissimos velit.\n',
                          style: AppTextStyles.light(
                              fontSize: 13, color: AppColors.blackColor),
                        ),
                        Text(
                          'Vel exercitationem quam vel eligendi rerum At harum obcaecati et nostrum beatae? Ea accusantium dolores qui rerum aliquam est perferendis mollitia et ipsum ipsa qui enim autem At corporis sunt. Aut odit quisquam est reprehenderit itaque aut accusantium dolor qui neque repellat.\n',
                          style: AppTextStyles.light(
                              fontSize: 13, color: AppColors.blackColor),
                        ),
                        Text(
                          'Read the terms and conditions in more detail at',
                          style: AppTextStyles.light(
                              fontSize: 13, color: AppColors.blackColor),
                        ),
                        Text(
                          'www.finwiseapp.de',
                          style: AppTextStyles.regular(
                              fontSize: 14, color: AppColors.oceanBlue),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Row(
                            children: [
                              Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.blackColor)),
                                  child: Center(
                                      child: Icon(
                                    Icons.done,
                                    size: 16,
                                  ))),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  'I accept all the terms and conditions',
                                  style: AppTextStyles.light(
                                      fontSize: 13,
                                      color: AppColors.blackColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 20),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  height: 45,
                                  width: 202,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppColors.caribbeanGreen),
                                  child: Center(
                                      child: Text(
                                    "Accept",
                                    style: AppTextStyles.semiBold(
                                        fontSize: 20,
                                        color: AppColors.lettersAndIcons),
                                  ))),
                            ),
                          ),
                        )
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
