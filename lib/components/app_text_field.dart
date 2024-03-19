import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(17),
          ),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 79, 189, 186),
        // fillColor: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
