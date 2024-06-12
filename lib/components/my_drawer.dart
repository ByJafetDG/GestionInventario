import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gestion_inventario/components/my_drawer_tile.dart';
import 'package:gestion_inventario/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // cerrar sesion
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // home list tile
          MyDrawerTile(
            text: "P R I N C I P A L",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          // settings list tile
          MyDrawerTile(
            text: "A J U S T E S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          // logout list tile
          MyDrawerTile(
            text: "C E R R A R _ S E S I Ó N",
            icon: Icons.logout,
            onTap: () {
              signUserOut();
            },
          ),

          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
