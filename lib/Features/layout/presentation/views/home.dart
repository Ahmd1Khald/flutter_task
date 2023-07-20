import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/color_manager.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';
import 'package:flutter_task/Core/resourse/strings_manager.dart';
import 'package:flutter_task/Features/layout/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter_task/Features/layout/presentation/views/widgets/home_banner.dart';
import 'package:flutter_task/Features/layout/presentation/views/widgets/home_list_view_builder.dart';

import '../../../../Core/resourse/assets_manager.dart';
import '../../../../Core/resourse/style_manager.dart';
import '../../../../Core/resourse/widgets/background_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: customDecoration(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HomeAppBar(),
                const HomeBanner(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: Image.asset(
                    ImageAssets.ad1,
                    height: MediaQuery.of(context).size.height * 0.25,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 35.0, right: 17, top: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              AppStrings.recommendedString,
                              style: getRegularStyle(
                                color: ColorManager.darkGray,
                                fontSize: FontSize.s30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const HomeListViewBuilder()
                        ],
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      const Expanded(
                        child: HomeListViewBuilder(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
