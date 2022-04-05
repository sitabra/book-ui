import 'package:book_ui/screen/firstscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink.shade300,
        child: const Icon(Icons.play_circle_fill_rounded),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => const FirstScreen(),
          ));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        height: MediaQuery.of(context).size.height * 0.90,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Image.network(
                  "https://media.istockphoto.com/videos/book-reading-icon-animation-video-id1010343096?s=640x640"),
            ),
            const Center(
              child: Text(
                "Read your \nfavourite books",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "All your favourite books are \nalready here",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.deepPurple,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
              },
              child: const Text("Back", style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }

}
