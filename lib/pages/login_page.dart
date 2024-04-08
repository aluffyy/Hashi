import 'dart:convert';

import 'package:Hashi/components/app_icons.dart';
import 'package:Hashi/config/app_routes.dart';
import 'package:Hashi/config/app_strings.dart';
import 'package:Hashi/model/user.dart';
import 'package:Hashi/styles/app_colors.dart';
import 'package:Hashi/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://localhost:8080';

class LoginPage extends StatelessWidget {
  final loginRoute = '$baseUrl/login';
  var username = '';
  var password = '';

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                ),
                const Text(
                  'Hashi',
                  style: AppText.header1,
                ),
                const Text(
                  'Bridge between connections',
                  style: AppText.subtitle1,
                ),

                const Spacer(),
                TextField(
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                    ),
                    filled: true,
                    fillColor: AppColors.fieldColor,
                  ),
                ),

                const SizedBox(height: 8),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                    ),
                    filled: true,
                    fillColor: AppColors.fieldColor,
                  ),
                ),

                // const SizedBox(
                //   height: 32,
                // ),

                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      print('Forgot is Clicked');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 53, 133, 139),
                    ),
                    child: const Text(AppStrings.forgotPassword),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () async {
                      final user = await doLogin();
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.main);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff14FFEC),
                      foregroundColor: Colors.black54,
                    ),
                    child: const Text('Log in'),
                  ),
                ),
                const Spacer(),
                const Text(
                  'Or sign in with',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Google is Clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      // minimumSize: const Size(150, 40),
                      // // Set desired width and height
                      // maximumSize: const Size(369, 40),
                      // // Set the same size for a fixed size
                      // padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black54,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icGoogle,
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(width: 8),
                        const Text('Login with Google'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // minimumSize: const Size(150, 40),
                      // // Set desired width and height
                      // maximumSize: const Size(369, 40),
                      // // Set the same size for a fixed size
                      // padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black54,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icFacebook,
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Login with Facebook'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 0, 173, 181),
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<User> doLogin() async {
    final body = {
      'username': username,
      'password': password,
    };
    final response =
        await http.post(Uri.parse(loginRoute), body: jsonEncode(body));
    if (response.statusCode == 200) {
      print(response.body);
      final json = jsonDecode(response.body);
      final user = User.fromJson(json['data']);
      return user;
    } else {
      print(response.body);
      print('bleh');
      throw Exception('error');
    }
  }
}
