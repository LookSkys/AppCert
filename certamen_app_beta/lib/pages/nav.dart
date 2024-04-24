import 'package:certamen_app_beta/pages/tabs/AnotherPage.dart';
import 'package:certamen_app_beta/pages/tabs/contratos.dart';
import 'package:certamen_app_beta/pages/tabs/perfil.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Nav extends StatefulWidget {
  Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _Nav3PageState();
}

class _Nav3PageState extends State<Nav> {
  int indice = 0;
  List<Widget> paginas = [
    PerfilPage(),
    ContratosPage(),
    AnotherPage(),
    AnotherPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'VT323',
      ),
      home: Scaffold(
        body: Container(
          color: Colors.black, // Color de fondo gris
          child: paginas[indice],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(fontSize: 15),
          selectedLabelStyle: TextStyle(fontSize: 20),
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 20),
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
