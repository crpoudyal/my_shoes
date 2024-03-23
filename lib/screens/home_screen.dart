import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/screens/all_product.dart';
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
      appBar: const AppBarWidget(slogon: '#सस्तो जुत्ता'),
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
              'Shoes Marketplace',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text(
              '# Top Items',
              style: TextStyle(fontSize: 16),
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
                                builder: (context) => AllProduct(
                                    image: ImageHelper.items[index].itemImage,
                                    name: ImageHelper
                                        .items[index].itemFullName)));
                      },
                    );
                  }),
            ),
            const SizedBox(height: 10),
            const Text(
              '# Top Brands',
              style: TextStyle(fontSize: 16),
            ),
            Expanded(
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: ImageHelper.brands.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      itemImages: ImageHelper.brands[index].brandImage,
                      itemName: ImageHelper.brands[index].brandName,
                      ontap: () {},
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
