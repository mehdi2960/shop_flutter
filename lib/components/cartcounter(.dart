import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);
  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        new SizedBox(
          width: 40,
          height: 30,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: StadiumBorder(),
              side: BorderSide(width: 0.25, color: Colors.black),
            ),
            onPressed: () {
              setState(() {
                numOfItems = numOfItems - 1;
              });
            },
            child: new Center(
              child: Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: TextStyle(fontSize: 20),
          ),
        ),
        new SizedBox(
          width: 40,
          height: 30,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: StadiumBorder(),
              side: BorderSide(width: 0.25, color: Colors.black),
            ),
            onPressed: () {
              setState(() {
                numOfItems = numOfItems + 1;
              });
            },
            child: new Center(
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
