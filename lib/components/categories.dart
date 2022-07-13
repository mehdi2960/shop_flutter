import 'package:flutter/material.dart';
import 'package:shop_flutter/constants.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> categories = ["Varzeshi", "Shop", "Pc", "Nike", "Men"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: index == selectedIndex
                              ? textColor
                              : textColorLight),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 30,
                      height: 2,
                      color: index == selectedIndex
                          ? Colors.black
                          : Colors.transparent,
                    )
                  ],
                ),
              ),
            );
          }),
    ));
  }
}
