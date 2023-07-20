import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';
import 'package:flutter_task/Features/help/presentation/widgets/help_title.dart';

import '../../../Core/resourse/color_manager.dart';
import '../../../Core/resourse/style_manager.dart';
import '../../../Core/resourse/widgets/shadow.dart';
import '../../auth/presentation/widgets/verify_widgets/background_decoration.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  double _containerHeight = 50;
  bool down = false;

  void increaseHeight() {
    setState(() {
      down = !down;
      _containerHeight = _containerHeight == 50 ? 130.0 : 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.colorGradient1.withOpacity(0.8),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: customDecoration(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HelpTitle(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.separated(
                      itemBuilder: (context, index) => customContainer(
                          _containerHeight, increaseHeight, down, 'Account'),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: 6,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customContainer(containerHeight, var function, bool down, title) =>
    AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: double.infinity,
      height: containerHeight,
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        boxShadow: [
          shadow(),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: getRegularStyle(
                      color: ColorManager.lineColor, fontSize: FontSize.s16),
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: function,
                icon: Icon(
                  down == false
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up,
                  size: 30,
                  color: ColorManager.darkGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
