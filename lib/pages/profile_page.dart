import 'package:Hashi/components/toolbar.dart';
import 'package:Hashi/config/app_routes.dart';
import 'package:Hashi/styles/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  break;
                default:
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Text('Edit'),
                ),
                const PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text('Log out'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: Image.asset(
              'assets/temp/user1.jpg',
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'aliza',
            style: AppText.header2,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Dhaka',
            style: AppText.subtitle3,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '333',
                    style: AppText.header2,
                  ),
                  Text('Followers')
                ],
              ),
              Column(
                children: [
                  Text(
                    '444',
                    style: AppText.header2,
                  ),
                  Text('Posts')
                ],
              ),
              Column(
                children: [
                  Text(
                    '5555',
                    style: AppText.header2,
                  ),
                  Text('Following')
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
