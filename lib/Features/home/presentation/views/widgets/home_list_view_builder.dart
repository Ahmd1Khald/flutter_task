import 'package:flutter/material.dart';

import '../../../domain/entites/products_entity.dart';
import 'item_bulider.dart';

class HomeListViewBuilder extends StatelessWidget {
  const HomeListViewBuilder({
    super.key,
    required this.list,
  });
  final List<ProductsEntity>? list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ItemBuilder(
        list: list![index],
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: list!.length ?? 0,
    );
  }
}
