import 'package:flutter/material.dart';

void main() => runApp(AppSimilares());

class AppSimilares extends StatelessWidget {
  const AppSimilares({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Similares",
      home: const funciones(),
    );
  }
}

class funciones extends StatelessWidget {
  const funciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Similares Ochoa",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.medical_services, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_basket, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Margen externo de la cuadrícula
          child: Column(
            children: [
              // Fila 1: Expandida
              Expanded(
                child: Row(
                  children: [
                    crearBotonExtendido(const Color.fromARGB(255, 143, 3, 96), Icons.badge, "EMPLEADOS"),
                    crearBotonExtendido(const Color.fromARGB(255, 206, 119, 6)!, Icons.people, "CLIENTES"),
                  ],
                ),
              ),
              // Fila 2: Expandida
              Expanded(
                child: Row(
                  children: [
                    crearBotonExtendido(const Color.fromARGB(255, 12, 100, 151), Icons.inventory_2, "PRODUCTOS"),
                    crearBotonExtendido(Colors.green, Icons.local_pharmacy, "MEDICINAS"),
                  ],
                ),
              ),
              // Fila 3: Expandida
              Expanded(
                child: Row(
                  children: [
                    crearBotonExtendido(const Color.fromARGB(255, 23, 55, 236), Icons.monetization_on, "VENTAS"),
                    crearBotonExtendido(const Color.fromARGB(255, 206, 14, 14), Icons.handshake, "PROVEEDORES"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Nuevo Widget que utiliza Expanded para llenar el espacio
  Widget crearBotonExtendido(Color color, IconData icono, String texto) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8), // Espacio entre cuadros
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 2, 59, 56).withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, size: 70, color: Colors.white), // Icono grande adaptado
            const SizedBox(height: 15),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18, // Texto un poco más grande
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

