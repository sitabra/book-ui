import 'package:book_ui/screen/firstscreen.dart';
import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),
              onPressed: () { Navigator.push(context, MaterialPageRoute(
                builder: (context) => const FirstScreen(),
              )); },
            );
          },
        ),
      ),
      body: const Center(child: Text("Notification Screen")),
    );
  }
}
