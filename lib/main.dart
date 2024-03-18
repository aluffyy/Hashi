import 'package:flutter/material.dart';

// import 'package:loremipsum/pages/home_page.dart';
// import 'package:loremipsum/pages/login_page.dart';
// import 'package:loremipsum/pages/main_page.dart';
// import 'package:loremipsum/styles/app_colors.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/main_page.dart';
import 'styles/app_colors.dart';

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
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
