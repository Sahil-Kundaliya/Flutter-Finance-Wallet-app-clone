import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget({
    super.key,
    required this.itemText,
    required this.itemIcon,
    required this.onTap,
    this.showIcon = false,
  });

  final IconData itemIcon;
  final String itemText;
  final VoidCallback onTap;
  bool? showIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 53,
            width: 57,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: AppColors.lightBlue),
            child: Icon(
              itemIcon,
              size: 30,
              color: AppColors.honeydew,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              itemText,
              style: AppTextStyles.medium(
                  fontSize: 15, color: AppColors.lettersAndIcons),
            ),
          ),
          if (showIcon ?? false)
            const Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            )
        ],
      ),
    );
  }
}
