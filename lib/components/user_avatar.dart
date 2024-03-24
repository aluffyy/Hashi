import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;

  // ? whats with the size
  const UserAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundImage: const AssetImage('assets/temp/user1.jpg'),
    );
  }
}
