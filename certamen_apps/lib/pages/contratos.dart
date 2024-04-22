import 'package:certamen_apps/pages/contrato.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Contrato {
  final IconData icon;
  final String title;
  final String status;
  final String amount;
  final String targetPerson;
  final String dangerLevel;
  final String description;
  final String imageUrl; // Cambiar a la ruta de archivo local

  Contrato({
    required this.icon,
    required this.title,
    required this.status,
    required this.amount,
    required this.targetPerson,
    required this.dangerLevel,
    required this.description,
    required this.imageUrl,
  });
}

class Contratos extends StatelessWidget {
  final List<Contrato> contratos = [
    Contrato(
      icon: MdiIcons.knife,
      title: 'Asesinato',
      status: 'Abierto',
      amount: '\$10,000,000',
      targetPerson: 'Jhon Wick',
      dangerLevel: 'Alto',
      description:
          'Un contrato para eliminar a un objetivo peligroso que ha traicionado a la organización.',
      imageUrl: 'assets/images/John_Wick.jpg', // Ruta de archivo local
    ),
    Contrato(
      icon: MdiIcons.bowArrow,
      title: 'Captura',
      status: 'Cerrado',
      amount: '\$500,000,000',
      targetPerson: 'Raul Cabrera',
      dangerLevel: 'Medio',
      description:
          'Se busca capturar a un fugitivo que ha escapado de la prisión de máxima seguridad.',
      imageUrl: 'assets/images/John_Wick.jpg', // Ruta de archivo local
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Contratos',
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: contratos.length,
              itemBuilder: (context, index) {
                return _buildContractItem(context, contratos[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContractItem(BuildContext context, Contrato contrato) {
    return ListTile(
      tileColor: Colors.white70,
      leading: Icon(
        contrato.icon,
        color: Colors.black,
      ),
      title: Text(
        contrato.title,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Estado: ${contrato.status}',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
          Text(
            'Monto: ${contrato.amount}',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
          Text(
            'Persona Objetivo: ${contrato.targetPerson}',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
          Text(
            'Nivel de Peligro: ${contrato.dangerLevel}',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DescripcionContratoPage(
              titulo: contrato.title,
              descripcion: contrato.description,
              imageUrl: contrato.imageUrl,
            ),
          ),
        );
      },
    );
  }
}
