import 'package:flutter/material.dart';
import 'package:my_shoes/screens/all_shoes.dart';
import 'package:my_shoes/screens/contact_screen.dart';
import 'package:my_shoes/screens/delivery_screen.dart';
import 'package:my_shoes/screens/home_screen.dart';
import 'package:my_shoes/screens/search_screen.dart';
import 'package:my_shoes/screens/shoes_details.dart';

class ShoesBottomNavBar extends StatefulWidget {
  final String name;
  final String image;
  final String price;
  final String brand;
  int crrentIndex;

  ShoesBottomNavBar({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.brand,
    required this.crrentIndex,
  });

  @override
  State<ShoesBottomNavBar> createState() => _ShoesBottomNavBarState();
}

class _ShoesBottomNavBarState extends State<ShoesBottomNavBar> {
  int selectedIndex = 0;
  List<Widget> _pages = [];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = 1;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomeScreen(),
      ShoesDetails(
        name: widget.name,
        image: widget.image,
        price: widget.price,
        brand: widget.brand,
        currentIndex: widget.crrentIndex,
      ),
      const SearchScreen(),
      const DeliveryScreen(),
      const ContactPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.8,
            ),
          ],
        ),
        child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            backgroundColor: Colors.grey,
            currentIndex: selectedIndex,
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            showUnselectedLabels: true,
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
                  icon:
                      Icon(Icons.delivery_dining_outlined, color: Colors.black),
                  label: 'Delivery'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone_outlined, color: Colors.black),
                  label: 'Contact')
            ]),
      ),
    );
  }
}
