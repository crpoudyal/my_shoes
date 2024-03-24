import 'package:flutter/material.dart';

class ContactFooterWidget extends StatelessWidget {
  const ContactFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
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
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {},
                child: const Text(
                  'Business',
                  style: TextStyle(color: Colors.black),
                ))),
      ],
    );
  }
}
