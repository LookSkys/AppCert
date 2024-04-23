import 'package:certamen_apps/pages/contratos.dart';
import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Formulario',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'VT323',
            fontSize: 28.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Text(
                'Nombre',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.grey[900],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Apellido',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.grey[900],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Rut',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.grey[900],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Banco',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.grey[900],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Número de Tarjeta',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'VT323',
                  fontSize: 20.0,
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.grey[900],
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Redirigir a otra página
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contratos()),
                  );
                },
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'VT323',
                    fontSize: 20.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Color del botón
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
