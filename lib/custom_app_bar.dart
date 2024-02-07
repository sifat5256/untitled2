import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final title;

  const CustomAppBar({super.key, required this.height,required this.title});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.blueGrey[100],

      actions: [
        IconButton(
          icon: Icon(Icons.call),
          onPressed: () {
            // Handle call button tap
          },
        ),
        IconButton(
          icon: Icon(Icons.message),
          onPressed: () {
            // Handle message button tap
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Get.toNamed('/profile');
          },
        ),
      ],
    );
  }
}
