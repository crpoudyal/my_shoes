import 'package:flutter/material.dart';
import 'package:my_shoes/app_bar/app_bar_widget.dart';
import 'package:my_shoes/constants/color_constants.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/widgets/contact_footer_widget.dart';
import 'package:my_shoes/widgets/contact_list_widget.dart';
import 'package:my_shoes/widgets/webview_flutter_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool isWhatsAppPressed = false;
// Url luncher for contact
  final Uri phoneNumberMembership =
      Uri.parse("tel:${Constants.phoneNumberMembership}");
  final Uri phoneNumberBusiness =
      Uri.parse("tel:${Constants.phoneNumberBusiness}");
  final Uri webSite = Uri.parse("https://${Constants.webSite}");
  final Uri pracasInfosys = Uri.parse(Constants.pracasInfosys);
  final Uri googleMap = Uri.parse(Constants.googleMapLink);
  final Uri email = Uri.parse("mailto:${Constants.email}");

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarWidget(slogon: ''),
      body: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expanded(
            //   child: Container(
            //     height: screenSize.height / 3,
            //     decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage(ImageHelper.map), fit: BoxFit.cover)),
            //   ),
            // ),
            const Expanded(child: WebviewFlutterWidget()),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                Constants.contactUs,
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
              onTap: () {
                launchUrl(googleMap);
              },
            ),
            ContactListWidget(
              contactTypeName: const Column(
                children: [
                  Text(Constants.email),
                ],
              ),
              iconData: Icons.mail_outline,
              onTap: () {
                launchUrl(email);
              },
            ),
            ContactListWidget(
              contactTypeName: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        launchUrl(phoneNumberMembership);
                      },
                      child: const Text(
                          "${Constants.phoneNumberMembership} [ Membership ]")),
                  InkWell(
                      onTap: () {
                        launchUrl(phoneNumberMembership);
                      },
                      child: const Text(
                          '${Constants.phoneNumberBusiness} [ Business ]')),
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
              onTap: () {
                launchUrl(webSite);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.buttomColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    Constants.becomeMember,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isWhatsAppPressed = !isWhatsAppPressed;
                      });
                    },
                    child: CircleAvatar(
                      maxRadius: 22,
                      backgroundColor: ColorConstants.buttomColor,
                      child: Image.asset(
                        ImageHelper.whatsapp,
                        height: 32,
                        width: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CircleAvatar(
                    maxRadius: 22,
                    backgroundColor: ColorConstants.buttomColor,
                    child: Image.asset(
                      ImageHelper.telegram,
                      height: 32,
                      width: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CircleAvatar(
                    maxRadius: 20,
                    child: InkWell(
                        onTap: () {
                          launchUrl(pracasInfosys);
                        },
                        child: Image.asset(ImageHelper.onboarding_1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      persistentFooterButtons: isWhatsAppPressed
          ? [
              ContactFooterWidget(
                onTapMembership: () {
                  launchUrl(phoneNumberMembership);
                },
                onTapBusiness: () {
                  launchUrl(phoneNumberBusiness);
                },
              ),
            ]
          : null,
    );
  }
}
