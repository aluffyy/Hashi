import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String user;

  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          color: theme.secondary,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)), child: Image.asset('assets/temp/post1.jpg', width: double.infinity, height: 200, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/temp/user1.jpg'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    user,
                    style: textTheme.displaySmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'I love lavender 💜',
                style: textTheme.displayMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
