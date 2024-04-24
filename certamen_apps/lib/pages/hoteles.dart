import 'package:flutter/material.dart';

class Hotel {
  final String nombre;
  final String ciudad;
  final String pais;
  final String imagenUrl;
  final String paisaje;

  Hotel({
    required this.nombre,
    required this.ciudad,
    required this.pais,
    required this.imagenUrl,
    required this.paisaje,
  });
}

class HotelesPage extends StatelessWidget {
  final List<Hotel> hoteles = [
    Hotel(
        nombre: 'Hotel Continental',
        ciudad: 'New York',
        pais: 'Estados Unidos',
        imagenUrl: 'assets/images/Estados_Unidos.webp',
        paisaje: 'assets/images/New_York_Skyline.webp'),
    Hotel(
        nombre: 'Hotel Continental',
        ciudad: 'Roma',
        pais: 'Italia',
        imagenUrl: 'assets/images/Italia.png',
        paisaje: 'assets/images/Roma.webp'),
    Hotel(
        nombre: 'Hotel Continental',
        ciudad: 'Casablanca',
        pais: 'Marruecos',
        imagenUrl: 'assets/images/Marruecos.png',
        paisaje: 'assets/images/Casablanca.webp'),
    Hotel(
        nombre: 'Hotel Continental',
        ciudad: 'Osaka',
        pais: 'Japón',
        imagenUrl: 'assets/images/Japon.png',
        paisaje: 'assets/images/Hotel_osaka.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Hoteles',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'VT323',
            fontSize: 28.0,
          ),
        ),
        centerTitle: true, // Centrar el título
      ),
      body: ListView.builder(
        itemCount: hoteles.length,
        itemBuilder: (context, index) {
          return _buildHotelItem(context, hoteles[index]);
        },
      ),
    );
  }

  Widget _buildHotelItem(BuildContext context, Hotel hotel) {
    return ListTile(
      leading: Image.asset(
        hotel.imagenUrl,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
      title: Text(
        hotel.nombre,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'VT323',
          fontSize: 20.0,
        ), // Color blanco
      ),
      subtitle: Text(
        '${hotel.ciudad}, ${hotel.pais}',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'VT323',
          fontSize: 20.0,
        ), // Color blanco
      ),
      onTap: () {
        // Aquí puedes manejar la acción al hacer clic en el hotel
      },
    );
  }
}
