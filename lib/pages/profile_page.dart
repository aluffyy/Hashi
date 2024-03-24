import 'package:Hashi/components/toolbar.dart';
import 'package:Hashi/components/user_avatar.dart';
import 'package:Hashi/config/app_routes.dart';
import 'package:flutter/material.dart';

enum ProfileMenu {
  edit,
  logout
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var theme = Theme.of(context).colorScheme;
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
          const SizedBox(
            height: 24,
          ),
          const UserAvatar(
            size: 90,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'aliza',
            style: textTheme.displayLarge,
          ),
          Text(
            'Dhaka',
            style: textTheme.displaySmall,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: theme.secondary,
                ),
                child: Column(
                  children: [
                    Text(
                      '333',
                      style: textTheme.displayMedium,
                    ),
                    Text('Followers', style: textTheme.displaySmall)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: theme.secondary,
                ),
                child: Column(
                  children: [
                    Text(
                      '444',
                      style: textTheme.displayMedium,
                    ),
                    Text('Posts', style: textTheme.displaySmall)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: theme.secondary,
                ),
                child: Column(
                  children: [
                    Text(
                      '5555',
                      style: textTheme.displayMedium,
                    ),
                    Text('Following', style: textTheme.displaySmall)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
