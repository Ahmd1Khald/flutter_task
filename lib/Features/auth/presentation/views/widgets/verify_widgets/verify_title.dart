import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';

import '../../../../../../Core/resourse/color_manager.dart';
import '../../../../../../Core/resourse/strings_manager.dart';
import '../../../../../../Core/resourse/style_manager.dart';

class VerifyTitle extends StatelessWidget {
  const VerifyTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45.0),
      child: Text(
        AppStrings.verifyTitleString,
        style: getRegularStyle(
          color: ColorManager.primaryColor,
          fontSize: FontSize.s32,
        ),
      ),
    );
  }
}
