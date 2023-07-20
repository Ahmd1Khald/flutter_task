import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/widgets/shadow.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/phone_textfield.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/register_title.dart';

import '../../../../Core/resourse/color_manager.dart';
import 'login_button.dart';
import 'name_textfield.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Container(
      height: MediaQuery.of(context).size.height * 0.43,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        boxShadow: [
          shadow(),
        ],
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.white24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const WelcomeTitle(),
              const SizedBox(
                height: 23,
              ),
              NameTextField(
                nameController: nameController,
              ),
              const SizedBox(
                height: 12,
              ),
              PhoneTextField(
                phoneController: phoneController,
              ),
              const SizedBox(
                height: 15,
              ),
              LoginButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
