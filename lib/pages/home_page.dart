import 'package:Hashi/styles/app_text.dart';
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
        body: ListView(
          children: mockUsersFromServer(),
        )
        // SingleChildScrollView (
        //   child: Column(
        //     children: mockUsersFromServer(),
        //   ),
        // ),
        );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/user1.jpg',
          width: 40,
          height: 40,
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "hehhe",
          style: AppText.subtitle3,
        ),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (int i = 0; i < 1000; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
