import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final String textDescription;

  DescriptionWidget({this.textDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                textDescription ?? "",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ))
        ],
      ),
    );
  }
}
