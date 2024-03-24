import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;

  const PostItem({super.key, required this.user});

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
              const SizedBox(
                height: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'I love lavender 💜',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
