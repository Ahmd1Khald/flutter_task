import 'package:flutter/material.dart';

import '../../../../../Core/constance/app_constance.dart';
import '../../../../../Core/resourse/assets_manager.dart';
import '../../../../../Core/resourse/color_manager.dart';

class StoreBuilder extends StatelessWidget {
  const StoreBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppConstants.padding),
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: ColorManager.shadowColor,
            spreadRadius: 5,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 6,
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorManager.white2,
              boxShadow: [
                BoxShadow(
                  color: ColorManager.shadowColor,
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Image.asset(ImageAssets.acerLogo),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Acer Official Store',
                style: TextStyle(fontSize: 17, color: ColorManager.darkGray),
              ),
              Text(
                'View Store',
                style: TextStyle(fontSize: 14, color: ColorManager.gray),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorManager.white2,
              boxShadow: [
                BoxShadow(
                  color: ColorManager.shadowColor,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) => const RadialGradient(
                colors: [ColorManager.blue, ColorManager.white],
              ).createShader(bounds),
              child: const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15,
              ),
            ),
          ),
          const SizedBox(
            width: 21,
          )
        ],
      ),
    );
  }
}
