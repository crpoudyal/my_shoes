import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/color_constants.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';

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
                Text(
                  widget.price,
                  style: const TextStyle(
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
                      Constants.buyNow,
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
                      Constants.addToCart,
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
                Constants.shoesDescription,
                style: TextStyle(fontSize: 16),
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
            Flexible(
                child: Center(
              child: Image.asset(
                ImageHelper.aramexLogo,
                color: ColorConstants.buttomColor,
              ),
            ))
            // Padding(
            //   padding: const EdgeInsets.only(top: 10),
            //   child: Container(
            //     height: 50,
            //     width: double.infinity,
            //     decoration:
            //         BoxDecoration(borderRadius: BorderRadius.circular(10)),
            //     child: InkWell(
            //       onTap: () {
            //         // Navigator.pushReplacement(
            //         //     context,
            //         //     MaterialPageRoute(
            //         //         builder: (context) => const BottomNavBar(
            //         //               index: 3,
            //         //             )));
            //       },
            //       child: Center(child: Image.asset(ImageHelper.aramexLogo)),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
    // persistentFooterButtons: [
    // SizedBox(
    //     height: 50, width: 50, child: Image.asset(ImageHelper.aramexLogo)),

    // SizedBox(
    //   width: double.infinity,
    //   child: ElevatedButton(
    //     onPressed: () {},
    //     style: ElevatedButton.styleFrom(
    //         backgroundColor: ColorConstants.buttomColor,
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(5))),
    //     child: const Text(
    //       'Buy Now',
    //       style: TextStyle(color: Colors.white, fontSize: 16),
    //     ),
    //   ),
    // )
    // ],
    // persistentFooterAlignment: AlignmentDirectional.center,
    // bottomNavigationBar: ShoesBottomNavBar(
    //     name: widget.name,
    //     image: widget.image,
    //     price: widget.price,
    //     brand: widget.brand,
    //     crrentIndex: currentIndex),
    // );
  }
}
