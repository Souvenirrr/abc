import 'package:flutter/material.dart';
import 'package:test_app/models/CustomizeItemModel.dart';

class CustomizeWidget extends StatelessWidget {
  List<CustomizeItemModel> listCustomize;

  CustomizeWidget({this.listCustomize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Customize",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listCustomize.length,
              itemBuilder: (_, index) {
                return Row(
                  children: [
                    Expanded(
                        child: Text(
                            listCustomize[index].titleCustomizeItem ?? "")),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        listCustomize[index].weight.toString() ?? "",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.red),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        listCustomize[index].measure ?? "",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}
