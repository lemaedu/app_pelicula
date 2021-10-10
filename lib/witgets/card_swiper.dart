import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //permite saver el ancho y el alto del dispositivo en el cual esta corriendo
    final size = MediaQuery.of(context).size;
    return Container(
      //indica que tome todo el ancho posible basado en el padre
      width: double.infinity,
      height: size.height * 0.5, //Obtiene el 50% de la Pantalla
      //color: Colors.redAccent,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details',
                arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        }, //se dispara cuando se inicia la constricion
      ),
    );
  }
}
