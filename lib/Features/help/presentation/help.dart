import 'package:flutter/material.dart';
import 'package:flutter_task/Features/help/presentation/widgets/custom_item.dart';
import 'package:flutter_task/Features/help/presentation/widgets/help_button.dart';
import 'package:flutter_task/Features/help/presentation/widgets/help_title.dart';

import '../../../Core/resourse/color_manager.dart';
import '../../auth/presentation/widgets/verify_widgets/background_decoration.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const HelpTitle(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.separated(
                      itemBuilder: (context, index) => const CustomContainer(
                        title: 'Account',
                        description: 'this is account item',
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemCount: 6,
                    ),
                  ),
                  HelpButton(
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
