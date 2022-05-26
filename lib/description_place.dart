import 'package:flutter/material.dart';

import 'button_purple.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {
  String nameplace="";
  int star;
  String descriptionPlace; 

  DescriptionPlace(this.nameplace,this.star,this.descriptionPlace, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //estrella a la mitad
    final starHalft = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final startBorder = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontSize: 16.0,
            fontFamily:"Lato",
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );
    final start = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );
    final titleStart = Row(
      //variable constaante
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            nameplace, 
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900,fontFamily:"Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        //ahora creamos las estrellas
        Row(
          children: [start, start, start, start, starHalft,startBorder],
        )
      ],
    );
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, //centrar
        children: [
        titleStart,
        description,
        ButtonPurple("Dale Like")
      ],
    );
  }
}
