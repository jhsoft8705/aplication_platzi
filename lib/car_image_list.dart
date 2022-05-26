import 'package:flutter/material.dart';
import 'card_image.dart';


class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
      
        children: [
        CardImage("assets/img/jh.jpg"),
        CardImage("assets/img/edicion.jpeg"),
        CardImage("assets/img/plantainterna.jpg"),
        CardImage("assets/img/plantaexterna.jpg"),
        CardImage("assets/img/river.jpeg"),
        CardImage("assets/img/tel.jpg"),
        CardImage("assets/img/iot.jpg")
        ], 
      ),
    );
  }
}
