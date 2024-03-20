import 'package:Hashi/components/app_text_field.dart';
import 'package:Hashi/components/toolbar.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Toolbar(title: 'Edit profile'),
      body: Column(
        children: [
          AppTextField(hint: 'First name'),
          AppTextField(hint: 'Last name'),
          AppTextField(hint: 'Phone number'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}
