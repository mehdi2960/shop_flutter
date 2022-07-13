import 'package:flutter/material.dart';
import 'package:shop_flutter/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:Text(
            "Women",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
          ),
        ),
        SizedBox(height: 20,),
        Category(),
      ],
    );
  }
}
