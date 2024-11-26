import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/splash/cubits/splash_cubit.dart';
import 'package:finance_wallet_app_clone/features/splash/cubits/splash_state.dart';
import 'package:finance_wallet_app_clone/features/splash/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  static const String onBoardingScreen = '/OnBoardingScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<SplashCubit, SplashState>(builder: (context, state) {
      final splashCubit = context.read<SplashCubit>();
      return Scaffold(
        backgroundColor: AppColors.caribbeanGreen,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.3,
                  child: Center(
                    child: Text(
                      splashCubit.onBoardingIndex == 0
                          ? 'Welcome to\nExpense Manager'
                          : '¿Are you ready to\ntake control of\nyour finaces?',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semiBold(
                          fontSize: 30, color: AppColors.cyprus),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                        color: AppColors.honeydew),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CarouselSlider(
                            options: CarouselOptions(
                              height: 300,
                              aspectRatio: 16 / 9,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: false,
                              reverse: false,
                              autoPlay: false,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                splashCubit.changeOnBoardingIndex(
                                    nextIndex: index);
                              },
                            ),
                            items: const [
                              OnBoardingWidget(
                                itemImage: AppImages.onBoarding1,
                              ),
                              OnBoardingWidget(
                                itemImage: AppImages.onBoarding2,
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 15),
                          child: Text(
                            'Next',
                            style: AppTextStyles.semiBold(
                                fontSize: 30, color: AppColors.cyprus),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 6.5,
                              backgroundColor: splashCubit.onBoardingIndex == 0
                                  ? AppColors.caribbeanGreen
                                  : AppColors.cyprus,
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor:
                                    splashCubit.onBoardingIndex == 0
                                        ? AppColors.transparentColor
                                        : AppColors.honeydew,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CircleAvatar(
                                radius: 6.5,
                                backgroundColor:
                                    splashCubit.onBoardingIndex == 1
                                        ? AppColors.caribbeanGreen
                                        : AppColors.cyprus,
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor:
                                      splashCubit.onBoardingIndex == 1
                                          ? AppColors.transparentColor
                                          : AppColors.honeydew,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Visibility(
          visible: splashCubit.onBoardingIndex == 1,
          child: FloatingActionButton(
            backgroundColor: AppColors.caribbeanGreen,
            onPressed: () {},
            shape: const CircleBorder(),
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.honeydew,
            ),
          ),
        ),
      );
    });
  }
}
