import 'package:flutter/material.dart';

class ContactListWidget extends StatelessWidget {
  final Widget contactTypeName;
  final IconData iconData;
  final VoidCallback onTap;
  const ContactListWidget(
      {super.key,
      required this.contactTypeName,
      required this.iconData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(
            height: 25,
            child: VerticalDivider(
              color: Colors.black,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: onTap,
                child: contactTypeName,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
