import 'package:flutter/material.dart';
import 'package:my_shoes/screens/all_shoes.dart';
import 'package:my_shoes/screens/contact_screen.dart';
import 'package:my_shoes/screens/delivery_screen.dart';
import 'package:my_shoes/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  final int nextIndex;
  const BottomNavBar({super.key, this.nextIndex = 3});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = [
    HomeScreen(),
    AllShoes(),
    HomeScreen(),
    DeliveryScreen(),
    ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          backgroundColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline, color: Colors.black),
                label: 'Items'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined, color: Colors.black),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining_outlined, color: Colors.black),
                label: 'Delivery'),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_outlined, color: Colors.black),
                label: 'Contact')
          ]),
    );
  }
}
