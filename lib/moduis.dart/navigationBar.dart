import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationBarFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.receipt_outlined,
            color: Colors.black,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.play_circle_outline,
            color: Colors.black,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 30,
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}
