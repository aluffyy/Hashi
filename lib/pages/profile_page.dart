import 'package:Hashi/components/toolbar.dart';
import 'package:Hashi/components/user_avatar.dart';
import 'package:Hashi/config/app_routes.dart';
import 'package:Hashi/styles/app_colors.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.background2,
              ),
              child: const Column(
                children: [
                  UserAvatar(
                    size: 90,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Aliza',
                    style: AppText.header2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'New Delhi, Delhi',
                    style: AppText.subtitle3,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
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
            // Divider(
            //   thickness: 1,
            //   height: 24,
            // ),
          ],
        ),
      ),
    );
  }
}
