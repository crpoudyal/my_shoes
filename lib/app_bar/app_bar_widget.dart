import 'package:flutter/material.dart';
import 'package:my_shoes/helper/image_helper.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String slogon;

  const AppBarWidget({super.key, required this.slogon});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 150,
      title: Row(
        children: [
          const Text('My Shoes. ',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(slogon,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
      elevation: 1,
      leading: Image.asset(ImageHelper.appIcon),
      shadowColor: Colors.grey,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: CircleAvatar(
            maxRadius: 20,
            child: Image.asset(ImageHelper.nepalLogo),
          ),
        )
      ],
    );
  }
}
