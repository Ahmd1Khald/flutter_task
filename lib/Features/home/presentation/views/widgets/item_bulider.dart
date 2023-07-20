import 'package:flutter/material.dart';
import 'package:flutter_task/Features/home/domain/entites/products_entity.dart';
import 'package:flutter_task/Features/home/presentation/views/product_details_screen.dart';

import '../../../../../Core/resourse/color_manager.dart';
import '../../../../../Core/resourse/font_manager.dart';
import '../../../../../Core/resourse/style_manager.dart';
import '../../../../../Core/resourse/widgets/shadow.dart';
import 'home_product_data.dart';
import 'home_product_image.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({
    super.key,
    required this.list,
  });

  final ProductsEntity list;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailsScreen(
                items: list,
              ),
            ));
      },
      child: Container(
          height: MediaQuery.of(context).size.height * 0.32,
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
              HomeProductImage(
                image: list.image ??
                    'https://m.media-amazon.com/images/I/7183SjkrSnL._AC_SL1500_.jpg',
              ),
              HomeProductData(
                company: list.company ?? 'No company',
                name: list.name ?? 'No name',
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.c,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      list.price ?? 'No price',
                      style: getRegularStyle(
                          color: ColorManager.darkGray, fontSize: FontSize.s12),
                    ),
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
