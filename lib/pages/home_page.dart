import 'package:Hashi/components/post_item.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.disableButton,
        elevation: 255,
        title: const Text(
          '橋-Hashi',
          style: TextStyle(
            color: AppColors.disableFont,
          ),
        ),
        actions: const [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {},
      ),
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (int i = 0; i < 1000; i++) {
      users.add(PostItem());
    }
    return users;
  }
}
