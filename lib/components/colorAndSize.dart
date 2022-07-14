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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ColorDot(
                        isSelected: true,
                        color: Color(0xFF3D82AE),
                      ),
                      ColorDot(
                        color: Color(0xFFD3A984),
                      ),
                      ColorDot(
                        color: Color(0xFF989493),
                      ),
                    ],
                  )
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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

class ColorDot extends StatelessWidget {
  final bool isSelected;
  final Color color;
  ColorDot({this.isSelected = false, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.white),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
