import 'package:flutter/material.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle estilo_nombre = TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'VT323' ,color: Colors.white);
    TextStyle estilo_seccion = TextStyle(fontSize: 19,fontWeight: FontWeight.bold,fontFamily: 'VT323',color: Colors.white);
    TextStyle estilo_dato = TextStyle(fontSize: 17, fontFamily: 'VT323',color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        title: Text('hola'),
      ),
    );
  }
}