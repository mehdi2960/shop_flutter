import 'package:flutter/material.dart';
import 'package:shop_flutter/components/categories.dart';
import '../moduls/product.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Women",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Category(),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  Product product = products[index];
                  return Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: product.color,
                            ),
                            
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
