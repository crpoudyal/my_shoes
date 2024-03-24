import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';

class AllProduct extends StatelessWidget {
  final String name;
  final String image;
  final String brand;
  const AllProduct({super.key, required this.name, required this.image,required this.brand});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(slogon: ''),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w900),
            ),
             const SizedBox(
              height: 10,
            ),
            Text('Brand : $brand')
          ],
        ),
      ),
    );
  }
}
