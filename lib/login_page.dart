import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          const Text('Hello, welcome back!'),
          const Text('Login to continue'),
          const TextField(
            decoration: InputDecoration(hintText: 'Username'),
          ),
          const TextField(
            decoration: InputDecoration(hintText: 'Password'),
          ),
          TextButton(
              onPressed: () {
                print('Forgot is Clicked');
              },
              child: const Text('Forgot Password?')),
          ElevatedButton(
              onPressed: () {
                print('Forgot is Clicked');
              },
              child: const Text('Log in')),
          const Text('Or sign in with'),
          ElevatedButton(
            onPressed: () {
              print('Google is Clicked');
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/images/google.png',
                  width: 22,
                  height: 22,
                ),
                const Text('Login with Google'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Facebook is Clicked');
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 22,
                ),
                const Text('Login with Facebook'),
              ],
            ),
          ),
          Row(
            children: [
              const Text('Don\'t have an account?'),
              TextButton(
                onPressed: () {},
                child: const Text('Sign up'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
