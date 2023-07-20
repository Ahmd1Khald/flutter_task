import 'package:flutter/material.dart';

import '../../../../../Core/resourse/assets_manager.dart';
import '../../../../../Core/resourse/color_manager.dart';
import '../../../../../Core/resourse/strings_manager.dart';
import '../../../../../Core/resourse/widgets/shadow.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10.0,
        left: 10,
        top: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
              child: Container(
                  // padding: EdgeInsets.all(15),
                  height: 50,
                  // width: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      shadow(),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: ColorManager.white,
                  ),
                  padding: const EdgeInsets.only(left: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: AppStrings.searchString,
                        hintStyle: TextStyle(color: ColorManager.gray),
                        suffixIcon: Icon(
                          Icons.search,
                          color: ColorManager.gray,
                        )),
                  )),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.shadowColor,
                    spreadRadius: 5,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
                color: ColorManager.white,
              ),
              child: Image.asset(
                ImageAssets.icon,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
