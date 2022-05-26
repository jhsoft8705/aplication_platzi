import 'package:flutter/material.dart';
import 'floating_button.dart';


// ignore: must_be_immutable
class CardImage extends StatelessWidget {
  
  String pathImage = "assets/img/jh.jpg";

  // constructor
    CardImage(this.pathImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      //dimesiones
      height: 250.0,
      width: 250.0,
      margin: const EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage(pathImage)),
      borderRadius:const BorderRadius.all(Radius.circular(10.0)),
      shape: BoxShape.rectangle,
      boxShadow:const [BoxShadow(color: Colors.black38,blurRadius: 15.0,offset:Offset(0.0, 7.0))]
      )
    );

    return Stack(
      alignment:const Alignment(0.9,1.1),
      children: [
        card,
        FloatingBtn(key: key,)
      ],
    );
  }
}
