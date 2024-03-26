import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/constants.dart';

import 'package:timelines/timelines.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  List<String> timelineTitle = [
    'Delivered',
    'Out for Delivery',
    'Shipped',
    'Reached Our Logistics Facility',
    'Dropped Off',
  ];
  List<String> timelineTimes = [
    '1:32 PM',
    '11:35 AM',
    '3:20 AM',
    '11:35 PM',
    '8:45 PM',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(slogon: ''),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Our Delivery Partner",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'Delivery Partner: ${Constants.deliveryPartnerName}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Tracking Number : ${Constants.trackingNumber}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Timeline.tileBuilder(
                  builder: TimelineTileBuilder.fromStyle(
                      connectorStyle: ConnectorStyle.dashedLine,
                      itemCount: timelineTitle.length,
                      contentsAlign: ContentsAlign.basic,
                      contentsBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(
                            timelineTitle[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                      oppositeContentsBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(
                            timelineTimes[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
