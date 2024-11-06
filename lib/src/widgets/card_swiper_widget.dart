import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class CardSwiperWidget extends StatefulWidget {
  final List<Pelicula> peliculas;
  CardSwiperWidget({required this.peliculas});

  @override
  State<CardSwiperWidget> createState() => _CardSwiperWidgetState();
}

class _CardSwiperWidgetState extends State<CardSwiperWidget> {
  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: _screenSize.height * 0.5,
      child: Swiper(
        itemBuilder: (context, index) {
          return Hero(
            tag: widget.peliculas[index].id,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'detalle',
                    arguments: widget.peliculas[index]),
                child: FadeInImage(
                  image: NetworkImage(widget.peliculas[index].getPosterImg()),
                  placeholder: AssetImage('assets/img/no-image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        itemCount: widget.peliculas.length,
        scrollDirection: Axis.horizontal,
        scale: 0.2,
        layout: SwiperLayout.STACK,
        itemWidth: 280,
      ),
    );
  }
}
