import 'package:flutter/material.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
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
        appBar: AppBar(
          leadingWidth: 150,
          title: const Row(
            children: [
              Text('My Shoes. ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
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
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage(ImageHelper.nepalLogo),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 10),
              const Text('Shoes Marketplace',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              const Text('# Top Items'),
              Expanded(
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: ImageHelper.shoesImages.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                        itemImages: ImageHelper.shoesImages[index],
                        itemName: Constants.itemName[index],
                      );
                    }),
              ),
              const SizedBox(height: 10),
              const Text('# Top Brands'),
              Expanded(
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: ImageHelper.brandImages.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                        itemImages: ImageHelper.brandImages[index],
                        itemName: Constants.brandName[index],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
