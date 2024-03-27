import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/color_constants.dart';
import 'package:my_shoes/constants/constants.dart';

class ShoesDetails extends StatefulWidget {
  final String name;
  final String image;
  final String price;
  final String brand;
  final int currentIndex;
  const ShoesDetails({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.brand,
    required this.currentIndex,
  });

  @override
  State<ShoesDetails> createState() => _ShoesDetailsState();
}

class _ShoesDetailsState extends State<ShoesDetails> {
  int? currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(slogon: ''),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 300,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: ColorConstants.buttomColor,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        )),
                  ),
                ),
                InteractiveViewer(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.contain),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.name,
              style: const TextStyle(fontWeight: FontWeight.w900),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Brand : ${widget.brand}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.share_outlined)),
              ],
            ),
            Row(
              children: [
                Text(
                  ' ${widget.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 35),
                ),
                const Text(
                  ' Rs. 3,499',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Buy Now!');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.buttomColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.buttomColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'UNITED REAL LEATHER brings to you 100% pure. Genuine Leather, made in Nepal with Nepali Raw Materials, handmade collection shoes crafted for comfort, style',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.buttomColor,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const BottomNavBar(
                    //               index: 3,
                    //             )));
                  },
                  child: const Center(
                      child: Text(
                    'Delivery Partner: ${Constants.deliveryPartnerName}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'Tracking Number: ${Constants.trackingNumber}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.buttomColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: const Text(
              'Buy Now',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        )
      ],
      // bottomNavigationBar: ShoesBottomNavBar(
      //     name: widget.name,
      //     image: widget.image,
      //     price: widget.price,
      //     brand: widget.brand,
      //     crrentIndex: currentIndex),
    );
  }
}
