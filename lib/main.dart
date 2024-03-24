import 'package:Hashi/config/app_routes.dart';
import 'package:Hashi/styles/app_text.dart';
import 'package:flutter/material.dart';

import 'styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

final darkTheme = DarkAppColors();
final darkText = DarkAppText();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
            displayLarge: darkText.header1,
            displayMedium: darkText.header2,
            displaySmall: darkText.subtitle1,
            bodyLarge: darkText.body1,
            bodyMedium: darkText.body2,
          ),
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: darkTheme.background,
          brightness: Brightness.dark,

          /// Secondary --> Button/Field
          colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: darkTheme.primary,
            onPrimary: darkTheme.font,
            secondary: darkTheme.fieldColor,
            onSecondary: darkTheme.font,
            error: Colors.red,
            onError: darkTheme.font,
            background: darkTheme.background,
            onBackground: darkTheme.font,

            /// Surface --> Disabled Button color
            surface: darkTheme.disableButton,

            /// OnSurface --> Disabled Button Text color
            onSurface: darkTheme.disableFont,
          )),
      //TODO: Match with actual themes
      darkTheme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: darkTheme.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
