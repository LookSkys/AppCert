import 'package:flutter/material.dart';

class DescripcionContratoPage extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String imageUrl;

  DescripcionContratoPage({
    required this.titulo,
    required this.descripcion,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titulo,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.black, // Fondo negro
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagen en la parte superior
            Image(
              image: AssetImage(imageUrl),
              fit: BoxFit
                  .cover, // Ajusta la imagen para cubrir todo el ancho disponible
            ),
            // Separador entre la imagen y la descripción
            SizedBox(height: 16.0),
            // Columna para la descripción y otras cosas
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Descripción
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    descripcion,
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
                // Otros elementos que desees agregar abajo de la descripción
              ],
            ),
          ],
        ),
      ),
    );
  }
}
