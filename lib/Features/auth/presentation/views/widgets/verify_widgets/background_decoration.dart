import 'package:flutter/cupertino.dart';

import '../../../../../../Core/resourse/color_manager.dart';

BoxDecoration customDecoration() => BoxDecoration(
      gradient: LinearGradient(
        colors: [
          ColorManager.colorGradient1,
          ColorManager.primaryColor,
          ColorManager.primaryColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
