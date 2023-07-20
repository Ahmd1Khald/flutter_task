import 'package:flutter/material.dart';

import '../../../../../Core/constance/app_constance.dart';
import '../../../../../Core/resourse/color_manager.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.padding),
      child: SizedBox(
        height: 126,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 23, horizontal: 14),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.shadowColor,
                          spreadRadius: 5,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: ColorManager.white,
                    ),
                    child: Image.asset(
                      images[i],
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
      ),
    );
  }
}
