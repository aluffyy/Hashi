import 'package:Hashi/components/app_icons.dart';
import 'package:Hashi/pages/home_page.dart';
import 'package:Hashi/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icHome), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icFavorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icAdd), label: 'Add post'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage), label: 'Messages'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icUser), label: 'User'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.teal,
      ),
    );
  }

  final pages = [
    HomePage(),
    const Center(
      child: Text('Favorite'),
    ),
    const Center(
      child: Text('Add Post'),
    ),
    const Center(
      child: Text('Messages'),
    ),
    const ProfilePage(),
  ];
}
