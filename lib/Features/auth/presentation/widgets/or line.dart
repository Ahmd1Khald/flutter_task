import 'package:flutter/material.dart';

import '../../../../Core/resourse/color_manager.dart';
import '../../../../Core/resourse/font_manager.dart';
import '../../../../Core/resourse/style_manager.dart';

class OrLine extends StatelessWidget {
  const OrLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.3,
          color: ColorManager.lineColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'OR',
            style: getMediumStyle(
              color: ColorManager.lineColor,
              fontSize: FontSize.s22,
            ),
          ),
        ),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.3,
          color: ColorManager.lineColor,
        ),
      ],
    );
  }
}
