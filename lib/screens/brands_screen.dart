import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
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
      appBar: const AppBarWidget(slogon: '#सस्तो जुत्ता'),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
            itemCount: ImageHelper.brands.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (context, index) {
              return ItemWidget(
                itemImages: ImageHelper.brands[index].brandImage,
                itemName: ImageHelper.brands[index].brandName,
                ontap: () {},
              );
            }),
      ),
    );
  }
}
