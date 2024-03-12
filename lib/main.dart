import 'package:flutter/material.dart';
import 'package:loremipsum/pages/home_page.dart';
import 'package:loremipsum/pages/login_page.dart';
import 'package:loremipsum/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home':(context) => HomePage(),
      },
    );
  }
}
