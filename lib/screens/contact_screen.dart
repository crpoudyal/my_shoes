import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/helper/image_helper.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarWidget(slogon: '#सस्तो जुत्ता'),
      body: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: screenSize.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageHelper.map), fit: BoxFit.cover)),
              ),
            ),
            const Text(
              'Contact Us',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Above Nepal SBI Bank'),
              subtitle: Text('Himalayan Road, Biratnagar'),
            ),
            const ListTile(
              leading: Icon(Icons.mail),
              title: Text('xyz@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+977-98XXXXXXXX'),
              subtitle: Text('+977-98XXXXXXXX'),
            ),
            const ListTile(
              leading: Icon(Icons.public),
              title: Text('xyz.com.np'),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    'Become a Member',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: CircleAvatar(
                    maxRadius: 20,
                    child: Image.asset(ImageHelper.whatsapp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: CircleAvatar(
                    maxRadius: 20,
                    child: Image.asset(ImageHelper.telegram),
                  ),
                ),
                const Divider(
                  thickness: 0.5,
                ),
              ],
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text(
                      'Membership',
                      style: TextStyle(color: Colors.black),
                    ))),
            Flexible(
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text(
                      'Business',
                      style: TextStyle(color: Colors.black),
                    ))),
          ],
        )
      ],
    );
  }
}
