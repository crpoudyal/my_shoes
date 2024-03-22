import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
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
        appBar: const AppBarWidget(slogon: '#SASTO SHOES'),
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
              const Divider(thickness: 0.8),
              Row(
                children: [
                  Flexible(child: Image.asset(ImageHelper.microsoft)),
                  Flexible(child: Image.asset(ImageHelper.microsoft))
                ],
              )
            ],
          ),
        ));
  }
}
