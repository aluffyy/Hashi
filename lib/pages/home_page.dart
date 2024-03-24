import 'package:Hashi/components/app_icons.dart';
import 'package:Hashi/components/post_item.dart';
import 'package:Hashi/components/toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: 'Hashi',
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.icLocation),
          ),
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
          return const SizedBox(
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
