import 'package:certamen_apps/pages/nav.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro
      appBar: AppBar(
        backgroundColor: Colors.black, // Color de fondo negro
        title: Text(
          'Inicio de Sesion',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'VT323',
            fontSize: 28.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40.0,
              child: Icon(
                MdiIcons.account,
                color: Colors.white, // Icono blanco
                size: 50.0, // Tamaño grande
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              style: TextStyle(color: Colors.white), // Texto blanco
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ), // Etiqueta blanca
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              style: TextStyle(color: Colors.white), // Texto blanco
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ), // Etiqueta blanca
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Borde blanco
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Redirigir a otra página
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Nav()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.grey[900]!; // Cambio de color al presionar
                    }
                    return Colors.grey[800]!; // Color gris oscuro normal
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white; // Texto blanco al presionar
                    }
                    return Colors.grey[100]!; // Texto gris claro normal
                  },
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ), // Texto blanco
              ),
            ),
          ],
        ),
      ),
    );
  }
}
