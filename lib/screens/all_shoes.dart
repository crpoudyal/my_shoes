import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/bottom_nav/shoes_bottom_nav_bar.dart';
import 'package:my_shoes/helper/image_helper.dart';
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: SizedBox(
                child: ItemWidget(
                    height: 150,
                    width: 150,
                    itemImages: ImageHelper.items[0].itemImage,
                    itemName: ImageHelper.items[0].itemFullName,
                    ontap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoesBottomNavBar(
                                  name: ImageHelper.items[0].itemName,
                                  image: ImageHelper.items[0].itemImage,
                                  price: ImageHelper.items[0].itemPrice,
                                  brand: ImageHelper.items[0].itemBrand,
                                  crrentIndex: 1)));
                    }),
              ),
            ),
            Flexible(
              child: GridView.builder(
                  itemCount: ImageHelper.items.length - 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      itemImages: ImageHelper.items[index + 1].itemImage,
                      itemName: ImageHelper.items[index + 1].itemName,
                      ontap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShoesBottomNavBar(
                                    name: ImageHelper.items[index].itemFullName,
                                    image: ImageHelper.items[index].itemImage,
                                    price: ImageHelper.items[index].itemPrice,
                                    brand: ImageHelper.items[index].itemBrand,
                                    crrentIndex: 1)));
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
