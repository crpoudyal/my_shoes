// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/bottom_nav/shoes_bottom_nav_bar.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/widgets/item_widget.dart';

enum Categories {
  Men,
  Women,
  Children,
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController categoriesText = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    categoriesText.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(slogon: ''),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                Constants.searchCategories,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            DropdownMenu<Categories>(
              width: 350,
              controller: categoriesText,
              enableFilter: true,
              requestFocusOnTap: true,
              initialSelection: Categories.Men,
              trailingIcon: const Icon(Icons.arrow_drop_down),
              selectedTrailingIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      categoriesText.text = '';
                    });
                  },
                  icon: const Icon(Icons.clear)),
              inputDecorationTheme: const InputDecorationTheme(
                contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              onSelected: (val) {
                FocusScope.of(context).requestFocus(FocusNode());
                debugPrint("clicked");
                // ImageHelper

                // ImageHelper.items.where((e) => e.itemCategories == val);
              },
              dropdownMenuEntries:
                  Categories.values.map<DropdownMenuEntry<Categories>>(
                (Categories categories) {
                  return DropdownMenuEntry<Categories>(
                    value: categories,
                    label: categories.name,
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: GridView.builder(
                  itemCount: ImageHelper.items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (context, index) {
                    return ItemWidget(
                      itemImages: ImageHelper.items[index].itemImage,
                      itemName: ImageHelper.items[index].itemName,
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ShoesDetails(
                        //       name: ImageHelper.items[index].itemFullName,
                        //       image: ImageHelper.items[index].itemImage,
                        //       brand: ImageHelper.items[index].itemBrand,
                        //       price: ImageHelper.items[index].itemPrice,
                        //       currentIndex: 1,
                        //     ),
                        //   ),
                        // );
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
