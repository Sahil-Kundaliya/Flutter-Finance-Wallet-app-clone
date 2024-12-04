import 'package:finance_wallet_app_clone/constant/app_colors.dart';
import 'package:finance_wallet_app_clone/constant/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomPinInput extends StatefulWidget {
  final int length;
  final void Function(String) onCompleted;
  final void Function(String) onChanged;

  const CustomPinInput({
    Key? key,
    this.length = 6,
    required this.onCompleted,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomPinInput> createState() => _CustomPinInputState();
}

class _CustomPinInputState extends State<CustomPinInput> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(widget.length, (index) => FocusNode());
    _controllers = List.generate(
        widget.length, (index) => TextEditingController(text: ''));
  }

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  String _getPin() {
    return _controllers.map((controller) => controller.text).join();
  }

  void _handleChange() {
    widget.onChanged(_getPin());
    if (_getPin().length == widget.length) {
      widget.onCompleted(_getPin());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: 39,
            height: 39,
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              textAlign: TextAlign.center,
              style: AppTextStyles.semiBold(
                  color: AppColors.blackColor, fontSize: 17.07),
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                counterText: '',
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide(color: AppColors.caribbeanGreen),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide(color: AppColors.caribbeanGreen),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide:
                      BorderSide(color: AppColors.caribbeanGreen, width: 2),
                ),
                filled: true,
                fillColor: AppColors.transparentColor,
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  if (index < widget.length - 1) {
                    _focusNodes[index + 1].requestFocus();
                  } else {
                    _focusNodes[index].unfocus();
                  }
                } else if (value.isEmpty && index > 0) {
                  _focusNodes[index - 1].requestFocus();
                }
                _handleChange();
              },
            ),
          ),
        ),
      ),
    );
  }
}
