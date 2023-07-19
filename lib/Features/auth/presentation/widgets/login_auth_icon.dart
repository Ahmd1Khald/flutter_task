import 'package:flutter/material.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/shadow.dart';

import '../../../../Core/resourse/assets_manager.dart';
import '../../../../Core/resourse/color_manager.dart';

class LoginIcons extends StatelessWidget {
  const LoginIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 50.0,
        horizontal: 70,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              ///Todo auth with facebook
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  shadow(),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: ColorManager.primaryColor,
                // You can customize the background color of the circle avatar
                child: Image.asset(
                  ImageAssets.faceIcon,
                  height: 40,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ///Todo auth with apple
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  shadow(),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: ColorManager.primaryColor,
                // You can customize the background color of the circle avatar
                child: Image.asset(
                  ImageAssets.appleIcon,
                  height: 40,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ///Todo auth with google
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  shadow(),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: ColorManager.primaryColor,
                // You can customize the background color of the circle avatar
                child: Image.asset(
                  ImageAssets.googleIcon,
                  height: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
