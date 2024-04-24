import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle estilo_seccion = TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'VT323',color: Colors.white);
    TextStyle estilo_dato = TextStyle(fontSize: 17, fontFamily: 'VT323',color: Colors.white);
    final String mi_parrafo = 'En esta sección encontrará los servicios\n'
                              'disponibles para asesinos, solo debe presionar\n'                                                                       
                              'el que desea adquirir y se desplegaran los\n'
                              'detalles de este.\n\n\n\n';

    return Scaffold(
      backgroundColor: Colors.black,
            body: Column(
              children: [
                //CONTAINER CON CUADRO DE TEXTO
                Row(
                  children: [
                    Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 250),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Column(
                        children: [
                          Text('Información\n', style: estilo_seccion),
                          Text(mi_parrafo, style: estilo_dato),
                          OutlinedButton(
                            onPressed: (){Navigator.pushNamed(context, '/listaServicios');}, 
                            child: Text('Servicios', style: estilo_dato,))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),  
    );
  }
}