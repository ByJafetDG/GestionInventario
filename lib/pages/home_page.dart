import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gestion_inventario/components/my_business_card.dart';

import '../components/my_drawer.dart';
import '../components/business_detail_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  final user = FirebaseAuth.instance.currentUser!;

// cerrar sesion
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToDetailPage(String businessName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BusinessDetailPage(businessName: businessName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Row(
          children: [
            Text('Bienvenid@ ', style: TextStyle(fontSize: 16)),
            Text('JafetDG',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Funcionalidad para agregar
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
              child: GestureDetector(
                onTap: () => _navigateToDetailPage('Negocio de Bagaces'),
                child: BusinessCard(
                  imagePath: 'lib/images/apple.png',
                  businessName: 'Negocio de Bagaces',
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () => _navigateToDetailPage('Negocio de Liberia'),
                child: BusinessCard(
                  imagePath: 'lib/images/apple.png',
                  businessName: 'Negocio de Liberia',
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () => _navigateToDetailPage('Negocio del Pelón'),
                child: BusinessCard(
                  imagePath: 'lib/images/apple.png',
                  businessName: 'Negocio del Pelón',
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () => _navigateToDetailPage('Negocio de Santa Cruz'),
                child: BusinessCard(
                  imagePath: 'lib/images/apple.png',
                  businessName: 'Negocio de Santa Cruz',
                ),
              ),
            ),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
