import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/screens/shoes_details.dart';
import 'package:my_shoes/widgets/item_widget.dart';

class AllShoes extends StatefulWidget {
  const AllShoes({super.key});

  @override
  State<AllShoes> createState() => _AllShoesState();
}

class _AllShoesState extends State<AllShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(slogon: ''),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
            itemCount: ImageHelper.items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (context, index) {
              return ItemWidget(
                itemImages: ImageHelper.items[index].itemImage,
                itemName: ImageHelper.items[index].itemName,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoesDetails(
                        name: ImageHelper.items[index].itemFullName,
                        image: ImageHelper.items[index].itemImage,
                        brand: ImageHelper.items[index].itemBrand,
                        price: ImageHelper.items[index].itemPrice,
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
