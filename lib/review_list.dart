import 'package:flutter/material.dart';
//importamos la clase review
import 'review.dart';

class ReviewList extends StatelessWidget {
    // ignore: use_key_in_widget_constructors
    const ReviewList({Key? key}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/usuario1.png", "jose", "2 Some quick", "Muchas gracias por la información"),
        Review("assets/img/usuario2.png", "name", "2 Some quick", "Muchas gracias por la información"),
        Review("assets/img/usuario1.png", "jose", "2 Some quick", "Muchas gracias por la información"),
        Review("assets/img/usuario2.png", "name", "2 Some quick", "Muchas gracias por la información"),
        

      ],
    );
  }
}
