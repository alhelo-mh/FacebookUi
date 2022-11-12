import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data/post_model.dart';

class Suggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Friands Suggestion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                'View All >',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => suggestionPlan(posts[index]),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: posts.length,
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.2,
          ),
        ],
      ),
    );
  }

  Widget suggestionPlan(InstagramUser user) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: NetworkImage(
            user.image!,
          ),
          width: 100,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
