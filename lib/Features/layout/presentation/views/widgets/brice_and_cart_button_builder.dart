import 'package:flutter/material.dart';

import '../../../../../Core/constance/app_constance.dart';
import '../../../../../Core/resourse/color_manager.dart';

class BriceAndCartButtonBuilder extends StatelessWidget {
  const BriceAndCartButtonBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.padding),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(color: ColorManager.gray, fontSize: 16),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  '30,000 EGP',
                  style: TextStyle(color: ColorManager.darkGray, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          ColorManager.blue,
                          ColorManager.blue.withOpacity(.5),
                          ColorManager.white
                        ]),
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.shadowColor,
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: ColorManager.white,
                  ),
                  child: const Center(
                      child: Text(
                    'Add To Cart',
                    style: TextStyle(color: ColorManager.white, fontSize: 17),
                  ))),
            ),
          )
        ],
      ),
    );
  }
}
