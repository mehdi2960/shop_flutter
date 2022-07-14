import 'package:flutter/material.dart';
import '../moduls/product.dart';

class Description extends StatelessWidget {
  final Product product;
  Description({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "${product.description}",
        style: TextStyle(fontSize: 14, height: 1.5),
      ),
    );
  }
}
