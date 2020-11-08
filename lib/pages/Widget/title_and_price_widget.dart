import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  final String title;
  final String promotionalPrice;
  final String price;

  TitleAndPrice({this.title, this.promotionalPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        RichText(
            text: TextSpan(
                text: '\$$promotionalPrice' ?? "",
                style: TextStyle(color: Colors.orange, fontSize: 20),
                children: [
              WidgetSpan(
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    '\$$price' ?? "",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 20),
                  ),
                ),
              ),
            ]))
      ],
    );
  }
}
