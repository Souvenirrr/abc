import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final Function onBack;

  HeaderWidget({this.onBack});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
        onTap: onBack,
        child: Icon(Icons.arrow_back),
      ),
      Expanded(
          child: Container(
        alignment: Alignment.centerRight,
        child: Stack(
          children: [
            Icon(Icons.notifications),
            Positioned(
                left: 10,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ))
          ],
        ),
      ))
    ]);
  }
}
