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
      appBar: const AppBarWidget(slogon: ''),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
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
              Constants.madeinnepal,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 10),
            const Text(
              Constants.bestSelling,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
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
                              name: ImageHelper.items[index].itemFullName,
                              brand: ImageHelper.items[index].itemBrand,
                              price: ImageHelper.items[index].itemPrice,
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
            const Text(
              Constants.newArrivles,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
                              name: ImageHelper.items[index].itemFullName,
                              brand: ImageHelper.items[index].itemBrand,
                              price: ImageHelper.items[index].itemPrice,
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageHelper.midBanner),
                    fit: BoxFit.contain),
              ),
            ),
          ],
        ),
      ),
      // persistentFooterButtons: [
      // Row(
      //   children: [
      //     Flexible(
      //         child: Row(
      //       children: [
      //         SizedBox(
      //             height: 50,
      //             width: 50,
      //             child: Image.asset(ImageHelper.darazLogo)),
      //         const Text(
      //           Constants.availableDaraz,
      //           style: TextStyle(fontSize: 16),
      //         )
      //       ],
      //     )),
      //     Flexible(
      //         child: Row(
      //       children: [
      //         SizedBox(
      //             height: 30,
      //             width: 30,
      //             child: Image.asset(ImageHelper.imepayLogo)),
      //         const Padding(
      //           padding: EdgeInsets.all(12.0),
      //           child: Text(
      //             Constants.paymentPartner,
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         )
      //       ],
      //     ))
      //   ],
      // )
      // ],
    );
  }
}
