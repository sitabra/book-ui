import 'package:flutter/material.dart';

import 'screens.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int index = 0;

  final screens = const [
    HomeScreen(),
    ArticleScreen(),
    BookmarkScreen(),
    NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        height: 55,
        selectedIndex: index,
        onDestinationSelected: (index) =>
            setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_filled),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.article),
              label: 'Article'),
          NavigationDestination(
              icon: Icon(Icons.bookmark),
              label: 'Bookmark'),
          NavigationDestination(
              icon: Icon(Icons.notifications),
              label: 'Notifications'),
        ]
      ),
      body: screens[index]
    );
  }
}
