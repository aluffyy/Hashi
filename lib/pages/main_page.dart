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
              icon: SvgPicture.asset('assets/svg/ic_home.svg'), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_add.svg'),
              label: 'Add post'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/ic_user.svg'), label: 'User'),
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
