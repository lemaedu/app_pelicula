import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'POPULARES',
              style: TextStyle(fontSize: .20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (_, int index) => _MoviePoster()),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details',
                arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/150x200'),
                width: 130,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Datos de la pelicula y mas detalles',
            maxLines: 2, //numero de lineas a mostrar
            overflow: TextOverflow.ellipsis, //muestra 3 puntos
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
