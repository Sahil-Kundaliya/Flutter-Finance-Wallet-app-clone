import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.textEditingController,
    required this.title,
    required this.textFieldHintText,
    this.titleStyle,
    this.textFieldHintTextStyle,
    this.icon1,
    this.icon2,
    this.iconColor1,
    this.iconColor2,
    this.icons1Click,
    this.hideText = false,
  });

  TextEditingController textEditingController;
  TextStyle? titleStyle, textFieldHintTextStyle;
  String title, textFieldHintText;
  IconData? icon1, icon2;
  Color? iconColor1, iconColor2;
  VoidCallback? icons1Click;
  bool? hideText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            title,
            style: titleStyle ??
                AppTextStyles.medium(
                    fontSize: 15, color: AppColors.lettersAndIcons),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            height: 41, // Height of the TextFormField
            child: TextFormField(
                controller: textEditingController,
                style: TextStyle(color: Colors.black), // Text color
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  hintText: textFieldHintText,
                  hintStyle: textFieldHintTextStyle ??
                      AppTextStyles.regular(
                          color: AppColors.lettersAndIcons.withOpacity(.45),
                          fontSize: 16),
                  // Hint text color
                  filled: true,
                  fillColor: AppColors.lightGreen,
                  // Background color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.5),
                    // Circular border
                    borderSide: BorderSide.none, // No border
                  ),
                  suffixIcon: icon1 != null && icon2 != null
                      ? GestureDetector(
                          onTap: icons1Click,
                          child: Icon(
                            (hideText ?? false) ? icon1 : icon2,
                            // Replace with any icon
                            color: ((hideText ?? false)
                                    ? iconColor1
                                    : iconColor2) ??
                                Colors.blue, // Icon color
                          ),
                        )
                      : null,
                ),
                obscureText: hideText ?? false),
          ),
        ),
      ],
    );
  }
}
