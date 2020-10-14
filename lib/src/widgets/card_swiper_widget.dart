import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List<dynamic> peliculas;

  CardSwiper({@required this.peliculas});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 300,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: 200,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/350x150",
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        //pagination: new SwiperPagination(),
        //control: new SwiperControl(),
      ),
    );
  }
}
