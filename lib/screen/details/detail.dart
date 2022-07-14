import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/colorAndSize.dart';
import '../../components/colorAndSize.dart';
import '../../components/counterwithfavbtn.dart';
import '../../components/description.dart';
import '../../constants.dart';
import '../../moduls/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  DetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      right: 10, left: 20, top: size.height * 0.12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorAndSize(
                        product: product,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Description(
                        product: product,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CounterWithFavBTn(product: product,),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
