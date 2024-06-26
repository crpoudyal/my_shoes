import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemWidget extends StatelessWidget {
  final String itemImages;
  final String itemName;
  final VoidCallback ontap;
  final int height;
  final int width;

  const ItemWidget({
    super.key,
    required this.itemImages,
    required this.itemName,
    required this.ontap,
    this.height = 65,
    this.width = 65,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: ontap,
        child: Column(
          children: [
            Container(
              height: height.toDouble(),
              width: width.toDouble(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(itemImages), fit: BoxFit.contain)),
            ),
            const SizedBox(height: 5),
            Text(itemName,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w800))
          ],
        ),
      ),
    );
  }
}
