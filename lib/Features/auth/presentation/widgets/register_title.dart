import 'package:flutter/material.dart';

import '../../../../Core/resourse/color_manager.dart';
import '../../../../Core/resourse/font_manager.dart';
import '../../../../Core/resourse/strings_manager.dart';
import '../../../../Core/resourse/style_manager.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.welcomeString,
          style: getRegularStyle(
            color: ColorManager.darkGrey,
            fontSize: FontSize.s28,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: 130,
          height: 2,
          color: ColorManager.lineColor,
        ),
      ],
    );
  }
}
