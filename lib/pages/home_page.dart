import 'package:Hashi/components/post_item.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
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
        centerTitle: false,
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (int i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}
