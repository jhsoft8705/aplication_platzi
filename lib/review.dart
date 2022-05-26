import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  String pathImage = "asset/img/people.jpg";
  String name = "Jhon Alex";
  String details = "1 review 5 photos";
  String coment = "But the first element is [{assets: null}] (YamlList).";

  //constructor
  Review(this.pathImage, this.name, this.details,this.coment, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

   final userComent=Container(
      margin:const EdgeInsets.only(left: 20.0),
      child: Text(coment,textAlign:TextAlign.left,style:const TextStyle(fontFamily:"Lato",fontSize: 13.0,
      fontWeight: FontWeight.w900
      )
      ),
    );
    final userInfo=Container(
      margin:const EdgeInsets.only(left: 20.0),
      child: Text(details,textAlign:TextAlign.left,style:const TextStyle(fontFamily:"Lato",fontSize: 13.0
      )
      ),
    );
  
    final userName = Container(
      margin:const EdgeInsets.only(left: 20.0),
      child: Text(name,textAlign:TextAlign.left,style:const TextStyle(fontFamily:"Lato",fontSize: 20.0),),
    );
    
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName,userInfo,userComent],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
