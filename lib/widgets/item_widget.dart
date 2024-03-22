import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String itemImages;
  final String itemName;
  const ItemWidget(
      {super.key, required this.itemImages, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 70, width: 70, child: Image.asset(itemImages)),
          const SizedBox(height: 5),
          Text(itemName, style: const TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
