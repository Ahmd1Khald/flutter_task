import 'package:flutter/material.dart';

import '../../../../Core/resourse/color_manager.dart';
import '../../../../Core/resourse/font_manager.dart';
import '../../../../Core/resourse/style_manager.dart';
import '../../../../Core/resourse/widgets/shadow.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer(
      {Key? key, required this.title, required this.description})
      : super(key: key);
  final String title;
  final String description;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
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
    return AnimatedContainer(
      duration: const Duration(milliseconds: 0),
      width: double.infinity,
      height: _containerHeight,
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          shadow(),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.title,
                  style: getRegularStyle(
                    color: ColorManager.lineColor,
                    fontSize: FontSize.s16,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      increaseHeight();
                    });
                  },
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
            if (down == true) Text(widget.description)
          ],
        ),
      ),
    );
  }
}
