import 'package:certamen_apps/pages/contratos.dart';
import 'package:certamen_apps/pages/hoteles.dart';
import 'package:certamen_apps/pages/pag_prueba.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Nav extends StatefulWidget {
  Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _Nav3PageState();
}

class _Nav3PageState extends State<Nav> {
  int indice = 0;
  List<Widget> paginas = [Contratos(), HotelesPage(), AnotherPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Agregamos MaterialApp
      theme: ThemeData(
        // Configuramos el tema
        fontFamily: 'VT323', // Aquí especificamos la fuente que deseamos usar
      ),
      home: Scaffold(
        body: paginas[indice],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Contratos',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.briefcase),
              label: 'Servicios',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.officeBuildingMarkerOutline),
              label: 'Hoteles',
            ),
          ],
          currentIndex: indice,
          onTap: (opcionSelec) {
            indice = opcionSelec;
            setState(() {});
          },
        ),
      ),
    );
  }
}
