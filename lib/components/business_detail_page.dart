import 'package:flutter/material.dart';

class BusinessDetailPage extends StatelessWidget {
  final String businessName;

  BusinessDetailPage({required this.businessName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(businessName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('lib/images/apple.png',
                height: 150), // Imagen del negocio
            SizedBox(height: 10),
            Text(businessName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            _buildSectionTitle('Empleados'),
            _buildEmployeesSection(),
            _buildSectionTitle('Gestionar inventario'),
            _buildInventorySection(),
            _buildSectionTitle('Sugerencias'),
            _buildSuggestionsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildEmployeesSection() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              CircleAvatar(radius: 30, backgroundColor: Colors.grey),
              SizedBox(height: 5),
              Text('Nombre'),
            ],
          ),
          Column(
            children: [
              CircleAvatar(radius: 30, backgroundColor: Colors.grey),
              SizedBox(height: 5),
              Text('Nombre'),
            ],
          ),
          Column(
            children: [
              CircleAvatar(radius: 30, backgroundColor: Colors.grey),
              SizedBox(height: 5),
              Text('Nombre'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInventorySection() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Gestionar inventario'),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildInventoryButton('Agregar'),
                _buildInventoryButton('Modificar'),
                _buildInventoryButton('Análisis'),
                _buildInventoryButton('Coste medio'),
                // Agrega más botones aquí si es necesario
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInventoryButton(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        onPressed: () {
          // Funcionalidad del botón
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, // Fondo negro
          foregroundColor: Colors.white, // Texto blanco
        ),
        child: Text(label),
      ),
    );
  }

  Widget _buildSuggestionsSection() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Productos próximos a vencer'),
              Icon(Icons.arrow_forward),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildSuggestionCard(),
                _buildSuggestionCard(),
                _buildSuggestionCard(),
                // Agrega más tarjetas aquí si es necesario
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: Center(child: Text('Img del producto')),
          ),
          SizedBox(height: 5),
          Text('Nombre'),
          Text('Vence: 01/09/2024', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
