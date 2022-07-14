import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_flutter/components/cartcounter(.dart';
import '../moduls/product.dart';

class CounterWithFavBTn extends StatelessWidget {
  final Product product;
  const CounterWithFavBTn({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
         width: 32,
         height: 32,
         padding: EdgeInsets.all(8),
         decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle
         ),
         child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
