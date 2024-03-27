import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/color_constants.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';

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
  // List<String> timelineDescription = [
  //   'Your Package has been delivered',
  //   'Our delivery partner ARAMEX will attempt to deliver your package today',
  //   'Your package is on the way to our last mile hub with tracking number ${Constants.trackingNumber} from where it will be delivered to you',
  //   'Your package has arrived at our logistics facility from where it will be sent to the last mile hub',
  //   'Your package has been dropped off by the seller and will soon arrive at our logistics facility',
  // ];
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
            // const Padding(
            //   padding: EdgeInsets.all(12.0),
            //   child: Text(
            //     "Our Delivery Partner",
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //   ),
            // ),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.buttomColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        ImageHelper.aramexLogo,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
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
              child: Timeline.tileBuilder(
                builder: TimelineTileBuilder.fromStyle(
                    connectorStyle: ConnectorStyle.dashedLine,
                    indicatorStyle: IndicatorStyle.dot,
                    itemCount: timelineTitle.length,
                    contentsAlign: ContentsAlign.basic,
                    contentsBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              timelineTitle[index],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            // Text(
                            //   timelineDescription[index],
                            // ),
                          ],
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
          ],
        ),
      ),
    );
  }
}
