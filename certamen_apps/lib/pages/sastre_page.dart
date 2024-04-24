import 'package:certamen_apps/widgets/appbar_asesinos.dart';
import 'package:certamen_apps/widgets/servicio_info.dart';
import 'package:flutter/material.dart';


class SastrePage extends StatelessWidget {
  const SastrePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppbarAsesinos(nombre_appbar: 'Servicio'),
      body: Container(
        child: Column(
          children: [
            ServicioDetalle(
              nombre_servicio: 'Sastre',
              nombre: 'Desconocido', 
              foto: 'sastre.jpg', 
              lugar: 'Italia', 
              horario: '12:30AM - 22:00PM', 
              tipo_servicio: 'Proporcion de trajes \ncon resistencia a balas'
              )
          ],
        ),  
      ),
    );
  }
}