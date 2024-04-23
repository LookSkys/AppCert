import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ServPage extends StatelessWidget {
  const ServPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle estilo_nombre = TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'VT323' ,color: Colors.white);
    TextStyle estilo_seccion = TextStyle(fontSize: 19,fontWeight: FontWeight.bold,fontFamily: 'VT323',color: Colors.white);
    TextStyle estilo_dato = TextStyle(fontSize: 17, fontFamily: 'VT323',color: Colors.white);

    return Scaffold(
      //APPBAR
      appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                'Lista de Servicios',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'VT323',
                ),
              ),
              centerTitle: true,
            ),
            //LISTA DE SERVICIOS      
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
              title: Text('Sommelier'),
              subtitle: Text('proporciona armas y munición'),
              leading: Icon(MdiIcons.pistol, color: Colors.orange, size: 40),
              trailing: Icon(MdiIcons.arrowRight,size: 20,),
            ),
            Divider(),
            ListTile(
              title: Text('Doctor'),
              subtitle: Text('servicio médico de urgencia'),
              leading: Icon(MdiIcons.heart, color: Colors.orange, size: 40),
              trailing: Icon(MdiIcons.arrowRight,size: 20,),
            ),
            Divider(),
            ListTile(
              title: Text('Sastre'),
              subtitle: Text('proporciona trajes con resistencia a balas'),
              leading: Icon(MdiIcons.hanger, color: Colors.orange, size: 40),
              trailing: Icon(MdiIcons.arrowRight,size: 20,),
            ),
            Divider(),
            ListTile(
              title: Text('Limpiadores'),
              subtitle: Text('aseo en lugar de asesinato y gestion de cadaveres'),
              leading: Icon(MdiIcons.broom, color: Colors.orange, size: 40),
              trailing: Icon(MdiIcons.arrowRight,size: 20,),
            ),
          ],
        ),
      ),
    );
  }
}