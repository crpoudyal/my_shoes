import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/widgets/contact_footer_widget.dart';
import 'package:my_shoes/widgets/contact_list_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarWidget(slogon: ''),
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Contact Us',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            ContactListWidget(
              contactTypeName: const Column(
                children: [
                  Text(Constants.addressOne),
                  Text(Constants.addressTwo)
                ],
              ),
              iconData: Icons.location_on_outlined,
              onTap: () {},
            ),
            ContactListWidget(
              contactTypeName: const Column(
                children: [
                  Text(Constants.email),
                ],
              ),
              iconData: Icons.mail_outline,
              onTap: () {},
            ),
            ContactListWidget(
              contactTypeName: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Constants.phoneNumberMembership),
                  Text(Constants.phoneNumberBusiness),
                ],
              ),
              iconData: Icons.phone_outlined,
              onTap: () {},
            ),
            ContactListWidget(
              contactTypeName: const Column(
                children: [
                  Text(Constants.webSite),
                ],
              ),
              iconData: Icons.public,
              onTap: () {},
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
                    Constants.becomeMember,
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
      persistentFooterButtons: const [
        ContactFooterWidget(),
      ],
    );
  }
}
