import 'package:flutter/material.dart';
import 'package:my_shoes/screens/brands_screen.dart';
import 'package:my_shoes/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

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
    BrandsScreen(),
    HomeScreen(),
    HomeScreen(),
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
                icon: Icon(Icons.phone_outlined, color: Colors.black),
                label: 'Contact')
          ]),
    );
  }
}
