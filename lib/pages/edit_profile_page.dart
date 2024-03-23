import 'package:Hashi/components/app_text_field.dart';
import 'package:Hashi/components/toolbar.dart';
import 'package:Hashi/components/user_avatar.dart';
import 'package:Hashi/config/app_strings.dart';
import 'package:Hashi/styles/app_colors.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: AppStrings.editProfile),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: UserAvatar(
                    size: 120,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: const Icon(
                      Icons.edit,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const AppTextField(hint: AppStrings.firstName),
            const SizedBox(
              height: 16,
            ),
            const AppTextField(hint: AppStrings.lastName),
            const SizedBox(
              height: 16,
            ),
            const AppTextField(hint: AppStrings.phoneNumber),
            const SizedBox(
              height: 16,
            ),
            const AppTextField(hint: AppStrings.location),
            const SizedBox(
              height: 16,
            ),
            const AppTextField(hint: AppStrings.birthday),
          ],
        ),
      ),
    );
  }
}
