import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Core/constance/app_keys.dart';
import 'package:flutter_task/Core/functions/toast.dart';
import 'package:flutter_task/Core/helpers/cachehelper.dart';
import 'package:flutter_task/Core/resourse/widgets/shadow.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/phone_textfield.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/register_title.dart';

import '../../../../../Core/functions/loading_page.dart';
import '../../../../../Core/resourse/color_manager.dart';
import '../../../../../Core/resourse/routes_manager.dart';
import '../../cotroller/verify_cubit.dart';
import 'login_button.dart';
import 'name_textfield.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return BlocConsumer<VerifyCubit, VerifyState>(
      listener: (context, state) {
        //verify
        if (state is VerifyLoadingState) {
          loadingPage(context: context);
        }
        if (state is VerifySuccessState) {
          print(state.verifyData);
          Navigator.pop(context);
          myToast(state: state.verifyData.code, toastState: ToastState.success);
          Navigator.pushNamed(context, Routes.verifyPhoneRoute,
              arguments: VerifyCubit.get(context));
        }
        if (state is VerifyErrorState) {
          //print(state.error);
          myToast(state: state.error, toastState: ToastState.error);
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        VerifyCubit cubit = VerifyCubit.get(context);
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
                      if (formKey.currentState!.validate()) {
                        print(nameController.text);
                        CacheHelper.saveData(
                            key: AppKeys.userName, value: nameController.text);
                        CacheHelper.saveData(
                            key: AppKeys.userPhone,
                            value: phoneController.text);
                        print(phoneController.text);
                        cubit.fetchItemsList(
                            data: [nameController.text, phoneController.text]);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
