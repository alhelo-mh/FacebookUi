import 'package:facebook_ui/data/post_model.dart';
import 'package:facebook_ui/data/post_model.dart';
import 'package:facebook_ui/data/post_model.dart';
import 'package:flutter/material.dart';

class FacebookStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  'Storios',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'See Archieve >',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                                'https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg'),
                          ),
                          CircleAvatar(
                            radius: 35,
                            child: Icon(Icons.add),
                            backgroundColor: Color.fromARGB(154, 74, 72, 121),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Your story',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          buildStoeyItem(posts[index]),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemCount: posts.length,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStoeyItem(InstagramUser user) {
    return Container(
      width: 70,
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(user.image!),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: NetworkImage(
                        'https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            " ${user.name ?? ''}",
            maxLines: 1,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
