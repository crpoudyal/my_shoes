import 'package:flutter/material.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/widgets/item_widget.dart';

class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        title: const Row(
          children: [
            Text('My Shoes. ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(width: 2),
            Text('#SastoShoes',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
        elevation: 1,
        leading: Image.asset(ImageHelper.appIcon),
        shadowColor: Colors.grey,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CircleAvatar(
              maxRadius: 20,
              child: Image.asset(ImageHelper.nepalLogo),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
            itemCount: ImageHelper.brandImages.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (context, index) {
              return ItemWidget(
                itemImages: ImageHelper.brandImages[index],
                itemName: Constants.brandName[index],
              );
            }),
      ),
    );
  }
}
