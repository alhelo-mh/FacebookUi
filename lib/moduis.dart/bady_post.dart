import 'package:flutter/material.dart';

class BadyPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'The most beautiful place in the world! 😍',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          RichText(
            text: const TextSpan(
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: '#Trnvel   '),
                  TextSpan(text: '#Ocean    '),
                  TextSpan(text: '#SafaTnip'),
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: NetworkImage(
                    'https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg'),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(5)),
              Image.asset(
                'images/like.png',
                width: 20,
              ),
              Image.asset(
                'images/love.png',
                width: 20,
              ),
              Image.asset(
                'images/laughing.png',
                width: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                '1.2K',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              const Text(
                '9 Commants | 65 Share',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.all(5)),
              Image.asset(
                'images/like_post.png',
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('Like'),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'images/chat-bubble.png',
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('Comments'),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'images/share.png',
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('Share'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.1,
          ),
        ],
      ),
    );
  }
}
