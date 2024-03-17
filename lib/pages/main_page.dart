import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation'),
      ),
      body: const Center(
        child: Text('centerText'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home'),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.teal,
      ),
    );
  }
}
