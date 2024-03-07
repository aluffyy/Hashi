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
          Text('Hello, welcome back!'),
          Text('Login to continue'),
          TextField(
            decoration: InputDecoration(hintText: 'Username'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Password'),
          ),
          TextButton(
              onPressed: () {
                print('Forgot is Clicked');
              },
              child: Text('Forgot Password?')),
          ElevatedButton(
              onPressed: () {
                print('Forgot is Clicked');
              },
              child: Text('Log in')),
          Text('Or sign in with'),
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
                Text('Login with Google'),
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
                Text('Login with Facebook'),
              ],
            ),
          ),
          Row(
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                onPressed: () {},
                child: Text('Sign up'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
