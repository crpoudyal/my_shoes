import 'package:flutter/material.dart';
import 'package:my_shoes/constants/constants.dart';

class ContactFooterWidget extends StatelessWidget {
  final VoidCallback onTapMembership;
  final VoidCallback onTapBusiness;
  const ContactFooterWidget({
    super.key,
    required this.onTapMembership,
    required this.onTapBusiness,
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
                onPressed: onTapMembership,
                child: const Text(
                  Constants.membership,
                  style: TextStyle(color: Colors.black),
                ))),
        Flexible(
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: onTapBusiness,
                child: const Text(
                  Constants.business,
                  style: TextStyle(color: Colors.black),
                ))),
      ],
    );
  }
}
