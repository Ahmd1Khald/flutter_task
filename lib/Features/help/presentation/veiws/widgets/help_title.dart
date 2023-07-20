import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';

import '../../../../../Core/resourse/color_manager.dart';
import '../../../../../Core/resourse/strings_manager.dart';
import '../../../../../Core/resourse/style_manager.dart';

class HelpTitle extends StatelessWidget {
  const HelpTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 45.0, left: 45, top: 30, bottom: 55),
      child: Text(
        AppStrings.helpString,
        style: getRegularStyle(
          color: ColorManager.primaryColor,
          fontSize: FontSize.s34,
        ),
      ),
    );
  }
}
