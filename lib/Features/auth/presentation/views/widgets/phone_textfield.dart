import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/color_manager.dart';
import 'package:flutter_task/Core/resourse/strings_manager.dart';

import '../../../../../Core/resourse/font_manager.dart';
import '../../../../../Core/resourse/style_manager.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController phoneController;

  const PhoneTextField({
    super.key,
    required this.phoneController,
  });

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: getLightStyle(
        color: ColorManager.lineColor,
        fontSize: FontSize.s20,
      ),
      cursorColor: ColorManager.lineColor,
      decoration: InputDecoration(
        hintText: AppStrings.phoneHintString,
        hintStyle: getLightStyle(
          color: ColorManager.lineColor,
        ),
        focusColor: ColorManager.lineColor,
        fillColor: ColorManager.primaryColor,
        border: const OutlineInputBorder(
            borderSide: BorderSide(
                //color: AppColors.inActiveBorderColor,
                )),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.lineColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: ColorManager.lineColor,
        )),
      ),
      controller: widget.phoneController,
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value!.length < 11) {
          return 'Phone is too small';
        }
        return null;
      },
    );
  }
}
