import 'package:flutter/material.dart';
import 'package:app_pelicula/witgets/witgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pelicula en Cines'),
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        //Colum permite colocar varios witgets hacia abajo
        body: Column(
          children: [CardSwiper()],
        ));
  }
}
