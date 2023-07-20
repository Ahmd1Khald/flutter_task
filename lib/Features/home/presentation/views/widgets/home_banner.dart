import 'package:flutter/material.dart';

import '../../../../../Core/resourse/assets_manager.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
      child: Image.asset(
        ImageAssets.ad1,
        height: MediaQuery.of(context).size.height * 0.25,
        fit: BoxFit.fill,
      ),
    );
  }
}
