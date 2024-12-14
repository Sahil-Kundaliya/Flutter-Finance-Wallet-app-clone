import 'package:finance_wallet_app_clone/features/common_widgets/custom_text_field.dart';
import 'package:finance_wallet_app_clone/features/main/cubits/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class AddExpensesScreen extends StatelessWidget {
  AddExpensesScreen({super.key});

  final TextEditingController dateController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController expenseTitleController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

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
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
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
                    child: Text('Add Expenses',
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
            decoration: BoxDecoration(
                color: AppColors.honeydew,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(65),
                    topRight: Radius.circular(65))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        CustomTextField(
                          textEditingController: dateController,
                          title: "Date",
                          textFieldHintText: "April 30 ,2024",
                          textFieldHintTextStyle: AppTextStyles.medium(
                              fontSize: 15, color: AppColors.lettersAndIcons),
                          icon1: Icons.calendar_month,
                          icon2: Icons.calendar_month,
                          iconColor1: AppColors.caribbeanGreen,
                          iconColor2: AppColors.caribbeanGreen,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CustomTextField(
                            textEditingController: categoryController,
                            title: "Category",
                            textFieldHintText: "Select the category",
                            textFieldHintTextStyle: GoogleFonts.leagueSpartan(
                                fontWeight: FontWeight.w500, // Medium
                                fontSize: 15,
                                color: AppColors.lettersAndIcons),
                            icon1: Icons.arrow_drop_down,
                            icon2: Icons.arrow_drop_down,
                            iconColor1: AppColors.caribbeanGreen,
                            iconColor2: AppColors.caribbeanGreen,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CustomTextField(
                            textEditingController: categoryController,
                            title: "Amount",
                            textFieldHintText: "\$26,00",
                            textFieldHintTextStyle: AppTextStyles.medium(
                                fontSize: 15, color: AppColors.lettersAndIcons),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CustomTextField(
                            textEditingController: categoryController,
                            title: "Expense Title",
                            textFieldHintText: "Dinner",
                            textFieldHintTextStyle: AppTextStyles.medium(
                                fontSize: 15, color: AppColors.lettersAndIcons),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25, bottom: 55),
                          child: TextFormField(
                            controller: messageController,
                            style: const TextStyle(color: Colors.black),
                            // Text color
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 15),
                              hintText: "Enter Message",
                              hintStyle: AppTextStyles.medium(
                                  color: AppColors.caribbeanGreen,
                                  fontSize: 15),
                              // Hint text color
                              filled: true,
                              fillColor: AppColors.lightGreen,
                              // Background color

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                // Circular border
                                borderSide: BorderSide.none, // No border
                              ),
                            ),
                            minLines: 5,
                            maxLines: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: size.width * 0.2,
                    child: GestureDetector(
                      onTap: () {
                        mainProvider.changeSubIndex(
                            index: 0, pageName: "Categories");
                      },
                      child: Container(
                          height: 36,
                          width: 169,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.caribbeanGreen,
                          ),
                          child: Center(
                            child: Text(
                              "Save",
                              style: AppTextStyles.medium(
                                  fontSize: 15,
                                  color: AppColors.lettersAndIcons),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
