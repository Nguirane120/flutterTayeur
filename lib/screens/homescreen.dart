import 'package:flutter/material.dart';
import 'package:tayeur/screens/clientscreen.dart';
import 'package:tayeur/screens/orderscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ClientsScreen(),
    OrdersScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application Tailleurs'),
      ),
      body: ClientsScreen(),
      // body: _screens[_selectedIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Clients',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag),
      //       label: 'Commandes',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,

      //   onTap: _onItemTapped,
      // ),
    );
  }
}
