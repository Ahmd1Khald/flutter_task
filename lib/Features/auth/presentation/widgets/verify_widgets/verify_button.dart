import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/color_manager.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';

import '../../../../../Core/resourse/strings_manager.dart';
import '../../../../../Core/resourse/style_manager.dart';

class VerifyButton extends StatelessWidget {
  VerifyButton({
    Key? key,
    formKey,
    required this.onPressed,
  }) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            ColorManager.colorGradient1,
            ColorManager.lineColor
            //ColorManager.colorGradient3,
            //ColorManager.colorGradient2,
          ],
        ),
      ),
      child: MaterialButton(
          onPressed: onPressed,
          child: Text(
            AppStrings.helpString,
            style: getMediumStyle(
              color: ColorManager.primaryColor,
              fontSize: FontSize.s20,
            ),
          )),
    );
  }
}
