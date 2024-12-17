import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';
import '../../../../constant/app_text_styles.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget(
      {super.key,
      required this.itemText,
      required this.itemIcon,
      required this.onTap});

  final IconData itemIcon;
  final String itemText;
  final VoidCallback onTap;

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
          )
        ],
      ),
    );
  }
}
