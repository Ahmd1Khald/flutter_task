import 'package:flutter/material.dart';

import '../../../../Core/resourse/assets_manager.dart';
import '../../../../Core/resourse/color_manager.dart';

class BaskGroundWidget extends StatelessWidget {
  const BaskGroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.95,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageAssets.registerCover),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 290,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.99,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(60),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
