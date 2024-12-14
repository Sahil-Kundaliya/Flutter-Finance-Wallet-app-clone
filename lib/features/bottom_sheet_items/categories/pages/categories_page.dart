import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_images.dart';
import '../../../../constant/app_text_styles.dart';
import '../../../main/cubits/main_cubit.dart';
import '../../../main/cubits/main_state.dart';
import '../../home/widgets/money_percentage_progressbar.dart';
import '../models/categories_model.dart';
import '../widgets/categories_item_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text('Categories',
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
                              child: const Icon(Icons.notifications_none,
                                  size: 20)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppImages.incomeIcon,
                                      width: 12, height: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text('Total Balance',
                                        style: AppTextStyles.regular(
                                            fontSize: 12,
                                            color: AppColors.lettersAndIcons)),
                                  )
                                ],
                              ),
                              Text('\$7,783.00',
                                  style: AppTextStyles.bold(
                                      fontSize: 24,
                                      color: AppColors.whiteColor))
                            ],
                          ),
                          Container(
                              height: 42,
                              width: 1,
                              color: AppColors.lightGreen),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppImages.expenseIcon,
                                      width: 12, height: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text('Total Expense',
                                        style: AppTextStyles.regular(
                                            fontSize: 12,
                                            color: AppColors.lettersAndIcons)),
                                  )
                                ],
                              ),
                              Text('-\$1.187.40',
                                  style: AppTextStyles.bold(
                                      fontSize: 24, color: AppColors.oceanBlue))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: MoneyPercentageProgressBar(
                          progressAmount: 20000, // For example: $14,000
                          percentage: 30 // For example: 70%)
                          ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.done, size: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('30% of your expenses, looks good.',
                              style: AppTextStyles.regular(
                                  fontSize: 15, color: AppColors.fenceGreen)),
                        )
                      ],
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
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        Expanded(
                            child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.8,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 3),
                          padding: const EdgeInsets.only(bottom: 10),
                          itemCount: allCategories.length + 1,
                          itemBuilder: (context, index) {
                            if (index > allCategories.length - 1) {
                              return CategoriesItemWidget(
                                currentModel: allCategories.first,
                                showAddMore: true,
                                onTap: () {},
                              );
                            } else {
                              CategoriesModel currentModel =
                                  allCategories[index];
                              return CategoriesItemWidget(
                                currentModel: currentModel,
                                onTap: () {
                                  mainProvider.changeSelectedCategory(
                                      nextCategory: currentModel);
                                  mainProvider.changeSubIndex(
                                      index: 2, pageName: "Categories");
                                },
                              );
                            }
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ));
    });
  }
}
