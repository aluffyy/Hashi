import 'package:Hashi/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChange;

  const AppTextField({super.key, required this.hint, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        border: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(17))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(17))),
        filled: true,
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
