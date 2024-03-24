import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/screens/shoes_details.dart';
import 'package:my_shoes/widgets/Item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(slogon: Constants.appSlogon),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage(ImageHelper.homeBanner),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              Constants.appSlogon,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text(
              '# Best Selling',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: ImageHelper.items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      itemImages: ImageHelper.items[index].itemImage,
                      itemName: ImageHelper.items[index].itemName,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShoesDetails(
                                      image: ImageHelper.items[index].itemImage,
                                      name:
                                          ImageHelper.items[index].itemFullName,
                                      brand: ImageHelper.items[index].itemBrand,
                                      price: ImageHelper.items[index].itemPrice,
                                    )));
                      },
                    );
                  }),
            ),
            const SizedBox(height: 10),
            const Text(
              '# New Arrivals',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                  reverse: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: ImageHelper.items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      itemImages: ImageHelper.items[index].itemImage,
                      itemName: ImageHelper.items[index].itemName,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShoesDetails(
                                      image: ImageHelper.items[index].itemImage,
                                      name:
                                          ImageHelper.items[index].itemFullName,
                                      brand: ImageHelper.items[index].itemBrand,
                                      price: ImageHelper.items[index].itemPrice,
                                    )));
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          children: [
            Flexible(child: Image.asset(ImageHelper.microsoft)),
            Flexible(child: Image.asset(ImageHelper.microsoft))
          ],
        )
      ],
    );
  }
}
