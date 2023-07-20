import 'package:flutter/material.dart';

class HomeProductImage extends StatefulWidget {
  const HomeProductImage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  State<HomeProductImage> createState() => _HomeProductImageState();
}

class _HomeProductImageState extends State<HomeProductImage> {
  bool isRed = false;

  void changeColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: EdgeInsets.zero,
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 142,
            child: Image.network(widget.image),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
              onPressed: () {
                changeColor();
              },
              icon: Icon(
                Icons.favorite,
                size: 28,
                color: isRed == false ? Colors.grey : Colors.red,
              )),
        )
      ],
    );
  }
}
