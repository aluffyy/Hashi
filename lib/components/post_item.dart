import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user1.jpg',
                width: 40,
                height: 40,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Moriom Islam Aliza",
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            'I love lavender 💜',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
