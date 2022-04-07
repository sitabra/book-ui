import 'package:book_ui/screen/home/home_screen.dart';
import 'package:book_ui/screen/book_details/details_screen.dart';
import 'package:flutter/material.dart';

import 'screen/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'homepage',
      routes: {
        'firstScreen':(context) => const HomeScreen(),
        'secondPage':(context) => const DetailsScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}
