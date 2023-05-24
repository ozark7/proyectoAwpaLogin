import 'package:awpa/src/app.dart';
import 'package:awpa/src/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int _currentIndex = 0;
  int _currentIndex2 = 0;

  final screens = [
    const Center(
        child: Scaffold(
      body: Text("dada"),
    )),
    const Center(
        child: Text('Favorites Screen', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Search Screen', style: TextStyle(fontSize: 45))),
    const Center(child: Scaffold()),
  ];

  final colors = [
    Color.fromARGB(253, 3, 218, 247),
    Color.fromARGB(220, 204, 6, 239),
    Color.fromARGB(255, 34, 143, 38),
    //Color.fromARGB(255, 236, 52, 10),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const Profile(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 800),
                ),
              );
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Acción al presionar el botón de regreso
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyAppForm()),
            ); // Navegar hacia atrás en la ruta anterior
          },
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text("Awpa",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        centerTitle: true,
        backgroundColor: colors[_currentIndex2],
      ),
      body: screens[_currentIndex2],
      // Variable para almacenar el índice seleccionado

// ...

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex2],
          tabBackgroundColor: colors[_currentIndex2],
          selectedIndex: _currentIndex2,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTabChange: (index) {
            // Actualizar el estado y ejecutar acciones según la pestaña seleccionada
            setState(() => _currentIndex2 = index);

            // Ejecutar acciones personalizadas según el índice seleccionado
            /* if (index == 3) {
              // Pestaña Profile
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const Profile(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 0),
                ),
              );
            } */
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.favorite,
              text: "Favorites",
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ),
            /* GButton(
              icon: Icons.person,
              text: "Profile",
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            ), */
          ],
        ),
      ),
    );
  }
}
