import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/color_manager.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/background.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/login_auth_icon.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/main_contanir.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/or%20line.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: const SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BaskGroundWidget(),
            Column(
              children: [
                MainContainer(),
                SizedBox(
                  height: 90,
                ),
                OrLine(),
                LoginIcons(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
