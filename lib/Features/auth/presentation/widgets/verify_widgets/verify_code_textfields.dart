import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/Core/resourse/color_manager.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';
import 'package:flutter_task/Features/auth/presentation/widgets/shadow.dart';

import '../../../../../Core/resourse/style_manager.dart';

class VerifyCodeForm extends StatelessWidget {
  const VerifyCodeForm({
    super.key,
    required this.codeController1,
    required this.codeController2,
    required this.codeController3,
    required this.codeController4,
  });

  final TextEditingController codeController1;
  final TextEditingController codeController2;
  final TextEditingController codeController3;
  final TextEditingController codeController4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              boxShadow: [shadow()],
            ),
            child: TextFormField(
              autofocus: true,
              cursorColor: ColorManager.lineColor,
              style: getBoldStyle(
                color: ColorManager.lineColor,
                fontSize: FontSize.s24,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: codeController1,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
              ),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              boxShadow: [shadow()],
            ),
            child: TextFormField(
              autofocus: true,
              cursorColor: ColorManager.lineColor,
              style: getBoldStyle(
                color: ColorManager.lineColor,
                fontSize: FontSize.s24,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: codeController2,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
              ),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              boxShadow: [shadow()],
            ),
            child: TextFormField(
              autofocus: true,
              cursorColor: ColorManager.lineColor,
              style: getBoldStyle(
                color: ColorManager.lineColor,
                fontSize: FontSize.s24,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: codeController3,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
              ),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: ColorManager.primaryColor,
              boxShadow: [shadow()],
            ),
            child: TextFormField(
              autofocus: true,
              cursorColor: ColorManager.lineColor,
              style: getBoldStyle(
                color: ColorManager.lineColor,
                fontSize: FontSize.s24,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: codeController4,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: ColorManager.primaryColor, width: 2),
                ),
              ),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
