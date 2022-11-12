import 'package:flutter/material.dart';

class HeaderPost extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg')),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Dominic Simmons',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '2 hrs',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          const Spacer(),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
