import 'package:flutter/material.dart';
import 'package:flutter_task/Features/home/domain/entites/products_entity.dart';
import 'package:flutter_task/Features/home/presentation/views/widgets/brice_and_cart_button_builder.dart';
import 'package:flutter_task/Features/home/presentation/views/widgets/lab_info_builder.dart';
import 'package:flutter_task/Features/home/presentation/views/widgets/list_view_builder.dart';
import 'package:flutter_task/Features/home/presentation/views/widgets/store_builder.dart';

import '../../../../Core/constance/app_constance.dart';
import '../../../../Core/resourse/assets_manager.dart';
import '../../../../Core/resourse/color_manager.dart';
import '../../../../Core/resourse/widgets/background_color.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key, required this.items}) : super(key: key);

  final ProductsEntity items;
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<String> images = [
    ImageAssets.ex1,
    ImageAssets.ex2,
    ImageAssets.ex3,
    ImageAssets.ex4,
  ];

  List<String> items = [
    "Overview",
    "Specification",
    "Review",
  ];

  /// List of body icon

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: customDecoration(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LabInfoBuilder(
                  name: widget.items.name,
                  type: widget.items.type,
                  image: widget.items.image,
                ),
                const SizedBox(
                  height: 16,
                ),
                ListViewBuilder(images: images),
                const SizedBox(
                  height: 16,
                ),
                const StoreBuilder(),
                const SizedBox(
                  height: 30,
                ),
                const BriceAndCartButtonBuilder(),
                const SizedBox(
                  height: 35,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.padding + 24.0),
                  child: Divider(
                    color: ColorManager.gray,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 500,
                  margin: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 80,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        current = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      color: ColorManager.white,
                                      child: Center(
                                        child: Text(
                                          items[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: current == index
                                                  ? ColorManager.darkGray
                                                  : ColorManager.gray),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Visibility(
                                      visible: current == index,
                                      child: Center(
                                        child: Container(
                                          width: 9,
                                          height: 9,
                                          decoration: const BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                ColorManager.blue,
                                                ColorManager.white
                                              ]),
                                              shape: BoxShape.circle),
                                        ),
                                      ))
                                ],
                              );
                            }),
                      ),

                      /// MAIN BODY
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero.',
                        style:
                            TextStyle(fontSize: 16, color: ColorManager.gray),
                      )
                    ],
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
