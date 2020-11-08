import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperWidget extends StatelessWidget {
  List<String> listImage = [
    "https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg",
    "https://www.twistandtwain.com/assets/resources/2020/01/pexels-photo-414612.jpeg",
    "https://images.unsplash.com/photo-1446685160726-504685f66413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Swiper(
        scrollDirection: Axis.horizontal,
        loop: true,
        viewportFraction: 1,
        scale: 1,
        itemCount: listImage.length,
        itemBuilder: (_, index) {
          return Container(
            // padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.network(
              listImage[index],
              fit: BoxFit.cover,
              width: double.infinity,
              height: 100,
            ),
          );
        },
        pagination: SwiperPagination(
          margin: EdgeInsets.only(left: 20, bottom: 10),
          alignment: Alignment.bottomLeft,
          builder: DotSwiperPaginationBuilder(
            size: 6,
            activeSize: 6,
            color: Color(0xffc9d3de), activeColor: Color(0xff8099ec),),
        ),
      ),
    );
  }
}
