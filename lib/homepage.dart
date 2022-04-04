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
    return Stack(
      children: [
        Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.90,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Image.network("https://media.istockphoto.com/videos/book-reading-icon-animation-video-id1010343096?s=640x640"),
                ),
                const Center(
                  child: Text("Read your \nfavourite books",
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text("All your favourite books are \nalready here",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink.shade300,
          child: const Icon(Icons.play_circle_fill_rounded),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
        Positioned(
          bottom: 7,
          child: TextButton(
              onPressed: () {},
              child: const Text("back",
              style: TextStyle(color: Colors.white),)),
        )
    ],
    );
  }
}
