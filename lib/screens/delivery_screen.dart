import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(slogon: ''),
      body: Center(
        child: SizedBox(
            height: 100,
            width: 100,
            child: Icon(Icons.delivery_dining_outlined)),
      ),
    );
  }
}

  //  DropdownMenu<Items>(
  //             width: double.infinity,
  //             controller: textController,
  //             enableFilter: true,
  //             requestFocusOnTap: true,
  //             initialSelection: Items.Men,
  //             trailingIcon: const Icon(Icons.arrow_drop_down),
  //             inputDecorationTheme: const InputDecorationTheme(
  //               contentPadding: EdgeInsets.symmetric(vertical: 5.0),
  //             ),
  //             onSelected: (val) {},
  //             dropdownMenuEntries: Items.values.map<DropdownMenuEntry<Items>>(
  //               (Items item) {
  //                 return DropdownMenuEntry<Items>(
  //                   value: item,
  //                   label: item.name,
  //                 );
  //               },
  //             ).toList(),
  //           ),
