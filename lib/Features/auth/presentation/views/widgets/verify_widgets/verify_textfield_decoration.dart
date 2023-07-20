import 'package:flutter/material.dart';

import '../../../../../../Core/resourse/color_manager.dart';

InputDecoration verifyDecoration() => InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: ColorManager.primaryColor, width: 2),
      ),
      enabled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: ColorManager.primaryColor, width: 2),
      ),
    );
