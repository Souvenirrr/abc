import 'package:flutter/material.dart';
import 'package:test_app/models/CustomizeItemModel.dart';
import 'package:test_app/pages/Widget/customize_widget.dart';
import 'package:test_app/pages/Widget/description_widget.dart';
import 'package:test_app/pages/Widget/header_widget.dart';
import 'package:test_app/pages/Widget/swiper_widget.dart';
import 'package:test_app/pages/Widget/title_and_price_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CustomizeItemModel> _list = [
    CustomizeItemModel("Low GI Rice", 100, 'kgs'),
    CustomizeItemModel("Med GI Rice", 100, 'kgs'),
    CustomizeItemModel("Betamore rice cake", 100, 'Pcs')
  ];

  void onBack() => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(onBack: onBack),
                Container(height: 200,child: SwiperWidget()),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TitleAndPrice(
                      title: 'Small Family Yearly Package',
                      price: '399.00',
                      promotionalPrice: '250.00'),
                ),
                DescriptionWidget(
                    textDescription:
                        "Best value package for mall family (3-4 person)"),
                CustomizeWidget(listCustomize: _list),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: Colors.red[700],
          child: Text(
            'Add to card'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
