import 'package:aplication_platzi/buscar.dart';
import 'package:aplication_platzi/home_app.dart';
import 'package:aplication_platzi/perfil.dart';
import 'package:flutter/material.dart';

class Navegacion extends StatefulWidget {
  const Navegacion({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Navegacion();
  }
}

class _Navegacion extends State<Navegacion> {
  //metodo evento bboton
     int  indexTap = 0;

  void eventoBotn(int index) {
    setState(() {
      indexTap=index;
    });
  }
  
  //arreglo
  final List<Widget> widgetVistas = [
    Home(),
    // ignore: prefer_const_constructors
    Buscar(),
    // ignore: prefer_const_constructors
    Perfil()
  ];
  //esto va a permitir hacer clicl en home y nos redireccion a home

  
  //metodo build
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: widgetVistas[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            onTap: eventoBotn,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Buscar"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Perfil"),
            ],
          )),
    );
  
  
  }
}
