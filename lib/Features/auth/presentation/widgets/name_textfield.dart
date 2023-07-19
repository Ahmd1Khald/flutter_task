import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/color_manager.dart';
import 'package:flutter_task/Core/resourse/strings_manager.dart';

import '../../../../Core/resourse/font_manager.dart';
import '../../../../Core/resourse/style_manager.dart';

class NameTextField extends StatefulWidget {
  final TextEditingController nameController;

  const NameTextField({
    super.key,
    required this.nameController,
  });

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: getLightStyle(
        color: ColorManager.lineColor,
        fontSize: FontSize.s20,
      ),
      cursorColor: ColorManager.lineColor,
      decoration: InputDecoration(
        hintText: AppStrings.nameHintString,
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
      controller: widget.nameController,
      keyboardType: TextInputType.name,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is too small';
        }
        return null;
      },
    );
  }
}
