import 'package:flutter/material.dart';
import '../moduls/product.dart';

class ColorAndSize extends StatelessWidget {
  // const ColorAndSize({Key? key}) : super(key: key);
  final Product product;
  ColorAndSize({required this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Color",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Color",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zize",
                  ),
                  Text(
                    "${product.size} Cm",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
