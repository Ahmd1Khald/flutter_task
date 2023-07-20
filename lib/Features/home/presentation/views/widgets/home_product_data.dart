import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';

import '../../../../../Core/resourse/color_manager.dart';
import '../../../../../Core/resourse/style_manager.dart';

class HomeProductData extends StatelessWidget {
  const HomeProductData({
    Key? key,
    required this.company,
    required this.name,
  }) : super(key: key);

  final String company;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            company,
            style: getRegularStyle(
                color: ColorManager.lineColor, fontSize: FontSize.s18),
          ),
          Text(
            name,
            style: getRegularStyle(
                color: ColorManager.darkGray, fontSize: FontSize.s12),
          ),
        ],
      ),
    );
  }
}
