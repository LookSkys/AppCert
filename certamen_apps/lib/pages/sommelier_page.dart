import 'package:certamen_apps/widgets/servicio_info.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SommelierPage extends StatelessWidget {
  const SommelierPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle estilo_nombre = TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'VT323' ,color: Colors.white);
    TextStyle estilo_seccion = TextStyle(fontSize: 19,fontWeight: FontWeight.bold,fontFamily: 'VT323',color: Colors.white);
    TextStyle estilo_dato = TextStyle(fontSize: 17, fontFamily: 'VT323',color: Colors.white);
    //final String s_info
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                'Servicio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'VT323',
                ),
              ),
              centerTitle: true,
            ),
      body: Container(
        child: Column(
          children: [
            ServicioDetalle(
              nombre_servicio: 'Sommelier',
              nombre: 'Desconocido', 
              foto: 'sommelier.jpg', 
              lugar: 'Reino Unido', 
              horario: '7:00AM - 15:00PM', 
              tipo_servicio: 'Proporción de armas y munición'
              )
          ],
        ),  
      ),
    );
  }
}