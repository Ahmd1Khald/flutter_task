import 'package:flutter/material.dart';

import 'item_bulider.dart';

class HomeListViewBuilder extends StatelessWidget {
  const HomeListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const ItemBuilder(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 4,
    );
  }
}
