import 'package:flutter/material.dart';

class FloatingBtn extends StatefulWidget {
  const FloatingBtn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingBtn();
  }
}

class _FloatingBtn extends State<FloatingBtn> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor:const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: metodoeventoboton,
      child: Icon( _pressed ? Icons.favorite: Icons.favorite_border),
    );
  } 

  void metodoeventoboton() {
    //accion boton onclick 
    setState(() {
      _pressed = !_pressed;
    });
 // ignore: deprecated_member_use
 Scaffold.of(context).showSnackBar(
        SnackBar(
          content:_pressed ? const Text("Agregaste a tus favoritos") : const Text("Quitaste de tus favoritos")
        )
    );
  }
}
