import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/verify_widgets/background_decoration.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/verify_widgets/verify_button.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/verify_widgets/verify_code_textfields.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/verify_widgets/verify_title.dart';

import '../../../Core/resourse/color_manager.dart';
import '../../../Core/resourse/style_manager.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller1 = TextEditingController();
    var controller2 = TextEditingController();
    var controller3 = TextEditingController();
    var controller4 = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: ColorManager.colorGradient1.withOpacity(0.8),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: customDecoration(),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const VerifyTitle(),
                  const SizedBox(
                    height: 20,
                  ),
                  VerifyCodeForm(
                    codeController1: controller1,
                    codeController2: controller2,
                    codeController3: controller3,
                    codeController4: controller4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: getRegularStyle(
                          color: ColorManager.lineColor,
                          fontSize: FontSize.s18,
                        ),
                      )),
                  const SizedBox(
                    height: 60,
                  ),
                  VerifyButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
