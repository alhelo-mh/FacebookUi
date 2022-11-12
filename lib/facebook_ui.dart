import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'data/post_model.dart';
import 'moduis.dart/app_bar.dart';
import 'moduis.dart/bady_post.dart';
import 'moduis.dart/header_post.dart';
import 'moduis.dart/navigationBar.dart';
import 'moduis.dart/storios.dart';
import 'moduis.dart/suggestion.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: FacebookAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FacebookStory(),
              HeaderPost(),
              BadyPost(),
              Suggestion(),
              NavigationBarFace()
            ],
          ),
        ));
  }
}
