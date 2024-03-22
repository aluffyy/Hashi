import 'package:Hashi/components/app_text_field.dart';
import 'package:Hashi/components/toolbar.dart';
import 'package:Hashi/components/user_avatar.dart';
import 'package:Hashi/config/app_strings.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                UserAvatar(
                  size: 120,
                ),
                Icon(Icons.edit),
              ],
            ),
            AppTextField(hint: 'First name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Last name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Phone number'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Location'),
          ],
        ),
      ),
    );
  }
}
