import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Core/helpers/cachehelper.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/verify_widgets/verify_button.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/verify_widgets/verify_code_textfields.dart';
import 'package:flutter_task/Features/auth/presentation/views/widgets/verify_widgets/verify_title.dart';

import '../../../../Core/constance/app_keys.dart';
import '../../../../Core/functions/loading_page.dart';
import '../../../../Core/functions/toast.dart';
import '../../../../Core/resourse/color_manager.dart';
import '../../../../Core/resourse/routes_manager.dart';
import '../../../../Core/resourse/style_manager.dart';
import '../../../../Core/resourse/widgets/background_color.dart';
import '../cotroller/verify_cubit.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller1 = TextEditingController();
    var controller2 = TextEditingController();
    var controller3 = TextEditingController();
    var controller4 = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return BlocConsumer<VerifyCubit, VerifyState>(
      listener: (context, state) {
        //otp
        if (state is CheckOtpLoadingState) {
          loadingPage(context: context);
        }
        if (state is CheckOtpSuccessState) {
          print(state.otpData);
          Navigator.pop(context);
          if (state.otpData.message == 'code is wrong') {
            myToast(state: state.otpData.message, toastState: ToastState.error);
          }
          if (state.otpData.message == 'code is Required') {
            myToast(state: state.otpData.message, toastState: ToastState.error);
          }
          if (state.otpData.message == 'Account Verified') {
            myToast(
                state: state.otpData.message, toastState: ToastState.success);
            Navigator.pushNamed(context, Routes.helpRoute);
          }
        }
        if (state is CheckOtpErrorState) {
          //print(state.error);
          myToast(state: state.error, toastState: ToastState.error);
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        VerifyCubit cubit = VerifyCubit.get(context);
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
                          onPressed: () {
                            ///todo activate it
                          },
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
                          if (formKey.currentState!.validate()) {
                            String code =
                                "${controller1.text}${controller2.text}${controller3.text}${controller4.text}";
                            print(code);
                            cubit.checkOtp(data: [
                              code,
                              CacheHelper.getDate(key: AppKeys.userPhone)
                            ]);
                          }
                        },
                      ),
                    ],
                  ),
                )),
          ),
        );
      },
    );
  }
}
