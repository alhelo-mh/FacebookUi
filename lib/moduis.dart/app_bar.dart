import 'package:flutter/material.dart';

class FacebookAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Image.network(
        'https://www.citypng.com/public/uploads/preview/-11595326031l03nmycbjs.png',
        width: 120,
        height: 80,
      ),
      backgroundColor: Colors.white,
      actions: [
        Icon(
          Icons.photo_camera_rounded,
          size: 30,
          color: Color.fromARGB(255, 50, 77, 253),
        ),
        SizedBox(
          width: 30,
        ),
        Image.asset(
          'images/message.png',
          width: 35,
        ),
        SizedBox(
          width: 30,
        ),
        Image.asset(
          'images/menus.png',
          width: 35,
        ),
        SizedBox(
          width: 15,
        ),
      ],
      elevation: 0.0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
