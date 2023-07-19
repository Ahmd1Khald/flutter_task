import 'package:flutter/material.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/verify_widgets/background_decoration.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/verify_widgets/verify_code_textfields.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/verify_widgets/verify_title.dart';

import '../../../Core/resourse/color_manager.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller1 = TextEditingController();
    var controller2 = TextEditingController();
    var controller3 = TextEditingController();
    var controller4 = TextEditingController();
    return Scaffold(
      backgroundColor: ColorManager.colorGradient1.withOpacity(0.8),
      body: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: customDecoration(),
            child: Column(
              children: [
                const VerifyTitle(),
                VerifyCodeForm(
                  codeController1: controller1,
                  codeController2: controller2,
                  codeController3: controller3,
                  codeController4: controller4,
                )
              ],
            )),
      ),
    );
  }
}
