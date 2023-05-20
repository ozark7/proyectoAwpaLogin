import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int _currentIndex = 0;

  final screens = [
    const Center(child: Text('Home Screen', style: TextStyle(fontSize: 45))),
    const Center(
        child: Text('Favorites Screen', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Search Screen', style: TextStyle(fontSize: 45))),
    const Center(child: Text('Profile Screen', style: TextStyle(fontSize: 45))),
  ];

  final colors = [
    Colors.cyan,
    Colors.purple,
    Colors.green,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awpa",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        centerTitle: true,
        backgroundColor: colors[_currentIndex],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(bottom: 10),
        child: GNav(
          color: colors[_currentIndex],
          tabBackgroundColor: colors[_currentIndex],
          selectedIndex: _currentIndex,
          tabBorderRadius: 10,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTabChange: (index) => {setState(() => _currentIndex = index)},
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
            GButton(
              icon: Icons.person,
              text: "Profile",
              iconActiveColor: Colors.white,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
