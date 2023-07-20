import 'package:flutter/material.dart';

import '../../../../../Core/resourse/color_manager.dart';
import '../../../../../Core/resourse/font_manager.dart';
import '../../../../../Core/resourse/style_manager.dart';

class LabInfoBuilder extends StatelessWidget {
  const LabInfoBuilder({
    super.key,
    required this.name,
    required this.type,
    required this.image,
  });

  final String name;
  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: ColorManager.white,
              height: 50,
              minWidth: 50,
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: ColorManager.gray,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 65,
            child: Text(
              name, //name
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: getBoldStyle(
                  color: ColorManager.primaryColor, fontSize: FontSize.s28),
            ),
          ),
          SizedBox(
            height: 50,
            child: Text(
              type, //type',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: getLightStyle(
                  color: ColorManager.primaryColor, fontSize: FontSize.s16),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            child: Container(
              padding: const EdgeInsets.all(40),
              height: MediaQuery.of(context).size.height * .35,
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.white,
              ),
              child: Image.network(
                image,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
