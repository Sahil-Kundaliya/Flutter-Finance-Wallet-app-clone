import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_images.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/models/transaction_model.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/home_page_transaction_widget.dart';
import 'package:finance_wallet_app_clone/features/bottom_sheet_items/home/widgets/money_percentage_progressbar.dart';
import 'package:finance_wallet_app_clone/features/common_widgets/custom_radio_button.dart';
import 'package:finance_wallet_app_clone/features/common_widgets/custom_text_field.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  TextEditingController searchController = TextEditingController();
  TextEditingController dateController = TextEditingController();

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
                        child: Text('Search',
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomTextField(
                    title: "",
                    textEditingController: searchController,
                    textFieldHintText: "Search...",
                    textFieldHintTextStyle: AppTextStyles.light(
                        fontSize: 13, color: AppColors.voidColor),
                  ),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Categories',
                              style: AppTextStyles.medium(
                                  fontSize: 15, color: AppColors.voidColor),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 20),
                            child: Container(
                              width: double.infinity,
                              height: 41,
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                color: AppColors.lightGreen,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: mainProvider.selectedCategory,
                                  icon: Icon(Icons.arrow_drop_down,
                                      color: AppColors.caribbeanGreen),
                                  hint: Text(
                                    'Select the category',
                                    style: GoogleFonts.leagueSpartan(
                                      fontSize: 15.6,
                                      color: AppColors.cyprus,
                                    ),
                                  ),
                                  isExpanded: true,
                                  dropdownColor: AppColors.honeydew,
                                  borderRadius: BorderRadius.circular(18),
                                  onChanged: (String? value) {
                                    mainProvider.changeDropDownValue(
                                        dropdownValue: value ?? '');
                                  },
                                  items: mainProvider.categories
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: AppTextStyles.medium(
                                          fontSize: 15,
                                          color: AppColors.voidColor,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextField(
                      title: "Date",
                      titleStyle: AppTextStyles.medium(
                          fontSize: 15, color: AppColors.voidColor),
                      textEditingController: dateController,
                      textFieldHintText: "30 /APR/2023",
                      textFieldHintTextStyle: AppTextStyles.light(
                          fontSize: 13, color: AppColors.voidColor),
                      icon1: Icons.calendar_month,
                      icon2: Icons.calendar_month,
                      iconColor1: AppColors.caribbeanGreen,
                      iconColor2: AppColors.caribbeanGreen,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 4),
                      child: Text(
                        'Report',
                        style: AppTextStyles.medium(
                            fontSize: 15, color: AppColors.lettersAndIcons),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            mainProvider.changeRadioValue(radioValue: 0);
                          },
                          behavior: HitTestBehavior.opaque,
                          child: Row(
                            children: [
                              CustomRadioButton(
                                mainCircle: 20,
                                secondCircle: 12,
                                isSelected: mainProvider.selectedRadio == 0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text(
                                  'Income',
                                  style: AppTextStyles.regular(
                                      fontSize: 16, color: AppColors.cyprus),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () {
                              mainProvider.changeRadioValue(radioValue: 1);
                            },
                            behavior: HitTestBehavior.opaque,
                            child: Row(
                              children: [
                                CustomRadioButton(
                                  mainCircle: 20,
                                  secondCircle: 12,
                                  isSelected: mainProvider.selectedRadio == 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Text(
                                    'Expense',
                                    style: AppTextStyles.regular(
                                        fontSize: 16, color: AppColors.cyprus),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Align(
                        child: Container(
                          height: 36,
                          width: 169,
                          decoration: BoxDecoration(
                              color: AppColors.caribbeanGreen,
                              borderRadius: BorderRadius.circular(30)),
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Search',
                                style: AppTextStyles.medium(
                                    fontSize: 15,
                                    color: AppColors.lettersAndIcons),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (mainProvider.selectedRadio == 1)
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: AppColors.lightGreen),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Container(
                                    height: 53,
                                    width: 57,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          22,
                                        ),
                                        color: AppColors.lightBlue),
                                    child: Center(
                                      child: Image.asset(
                                        AppImages.foodIcon,
                                        color: AppColors.honeydew,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dinner",
                                        style: AppTextStyles.medium(
                                            fontSize: 15,
                                            color: AppColors.fenceGreen),
                                      ),
                                      Text(
                                        "18:27 - April 30",
                                        style: AppTextStyles.semiBold(
                                            fontSize: 12,
                                            color: AppColors.oceanBlue),
                                      ),
                                    ],
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                Text(
                                  "-\$26,00",
                                  style: AppTextStyles.medium(
                                      fontSize: 15, color: AppColors.oceanBlue),
                                ),
                              ],
                            ),
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
  }
}
