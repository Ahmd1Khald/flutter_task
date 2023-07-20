import 'package:flutter/material.dart';

import '../../../../../Core/resourse/color_manager.dart';
import '../../../../../Core/resourse/routes_manager.dart';
import '../../../../../Core/resourse/widgets/shadow.dart';
import 'home_product_data.dart';
import 'home_product_image.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.productDetailsRoute);
      },
      child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            boxShadow: [
              shadow(),
            ],
            borderRadius: BorderRadius.circular(20),
            color: ColorManager.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeProductImage(
                image:
                    'https://m.media-amazon.com/images/I/7183SjkrSnL._AC_SL1500_.jpg',
              ),
              const HomeProductData(
                company: 'Acer',
                name: 'Predator Helios 300',
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.c,
                children: [
                  const Text(
                    '32,000 EGP',
                    style:
                        TextStyle(color: ColorManager.darkGray, fontSize: 12),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          ColorManager.blue,
                          ColorManager.blue.withOpacity(.3)
                        ]),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: const Icon(
                      Icons.add,
                      color: ColorManager.white,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
