import 'package:flutter/material.dart';
import 'package:tayeur/screens/clientscreen.dart';
import 'package:tayeur/screens/galleriescreen.dart';
import 'package:tayeur/screens/orderscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Application Tailleurs'),
          bottom: _selectedIndex == 0
              ? const TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Color(0xFFD1C000),
                  tabs: [
                    Tab(
                      icon: Icon(Icons.list),
                      text: 'Liste des Clients',
                    ),
                    Tab(
                      icon: Icon(Icons.photo),
                      text: 'Galerie',
                    ),
                  ],
                )
              : null,
        ),
        body: _selectedIndex == 0
            ? TabBarView(
                children: [
                  ClientsScreen(),
                  GalleryScreen()
                ],
              )
            : OrdersScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Clients',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Commandes',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
