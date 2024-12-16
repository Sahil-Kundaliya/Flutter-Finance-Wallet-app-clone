import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../constant/app_text_styles.dart';
import '../models/categories_model.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget(
      {super.key,
      required this.currentModel,
      required this.onTap,
      this.showAddMore = false});

  final CategoriesModel currentModel;
  final bool showAddMore;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 98,
            width: 105,
            decoration: BoxDecoration(
                color: currentModel.categoriesColor,
                borderRadius: BorderRadius.circular(25.7)),
            child: showAddMore
                ? const Icon(
                    Icons.add,
                    color: AppColors.whiteColor,
                    size: 45,
                  )
                : Image.asset(
                    currentModel.categoriesImage,
                    color: AppColors.whiteColor,
                    scale: 5,
                    height: 50,
                    width: 80,
                  ),
          ),
          Expanded(
            child: Text(
              showAddMore ? "Add" : currentModel.categoriesName,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.medium(
                  fontSize: 15, color: AppColors.lettersAndIcons),
            ),
          )
        ],
      ),
    );
  }
}
