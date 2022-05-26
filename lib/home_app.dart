import 'package:aplication_platzi/review_list.dart';
import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header.appbar.dart';

 // ignore: must_be_immutable
 class Home extends  StatelessWidget{
  // ignore: non_constant_identifier_names
  String contenido_description = "It might appear that the field _originalValue It might appear that the field _originalValue";

  Home({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Stack(
          children: [ ListView(  children: [ DescriptionPlace("Jh Soft",2,contenido_description),
           ReviewList(key: key,)],),
           const HeaderAppBar(),
          ],
         );
  }
  
}