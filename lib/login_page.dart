import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 7, 34, 39),
      body: Column(
        children: [
          // const Text(
          //   'Hello, welcome back!',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 22,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // const SizedBox(height: 10), // Adjust spacing as needed
          Image.asset(
            'assets/images/logo.png',
            width: 300,
            height: 300,
          ),
          // const Text(
          //   'Hunos?',
          //   style: TextStyle(color: Colors.white),
          // ),

          const SizedBox(
            width: 369,
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(17),
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 79, 189, 186),
                // fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const SizedBox(
            width: 369,
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(17),
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 79, 189, 186),
              ),
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
              child: const Text('Forgot Password?'),
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                print('Login is Clicked');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 254, 255),
                foregroundColor: Colors.black54,
              ),
              child: const Text('Log in'),
            ),
          ),
          const Spacer(),
          // const SizedBox(height: 69), // height from bottom-stuff
          const Text(
            'Or sign in with',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              print('Google is Clicked');
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 40),
              // Set desired width and height
              maximumSize: const Size(369, 40),
              // Set the same size for a fixed size
              padding: EdgeInsets.zero,
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
                  'assets/images/google.png',
                  width: 22,
                  height: 22,
                ),
                const SizedBox(width: 8),
                const Text('Login with Google'),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 40),
              // Set desired width and height
              maximumSize: const Size(369, 40),
              // Set the same size for a fixed size
              padding: EdgeInsets.zero,
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
                  'assets/images/facebook.png',
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
        ],
      ),
    );
  }
}
