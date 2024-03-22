import 'package:flutter/material.dart';

class AllProduct extends StatelessWidget {
  final String name;
  final String image;
  const AllProduct({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Hero(tag: 'tag', child: Image.asset(image)),
      ),
    );
  }
}
