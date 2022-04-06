import 'package:book_ui/screen/firstscreen.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            bookItems(),
            introductionDetails(),
          ],
        ),
      ),
    );
  }

  Widget bookItems() {
    return Container(
      height: 480,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Image(image: NetworkImage("https://marketplace.canva.com/EAD7YHrjZYY/1/0/1003w/canva-blue-illustrated-stars-children%27s-book-cover-haFtaSNXXF4.jpg"),
              height: 300,
              width: 300,),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {},
                    child: const Text("Science",style: TextStyle(color: Colors.pinkAccent),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade100,
                      fixedSize: const Size(90, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),),
                ElevatedButton(onPressed: () {},
                  child: const Text("History",style: TextStyle(color: Colors.pinkAccent),),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade100,
                      fixedSize: const Size(90, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),),
              ],
            ),
          const SizedBox(
            height: 10,
          ),
          const Text("Galaxy 101", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          const Text("by Anna", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star,color: Colors.yellow,),
              Icon(Icons.star_half_sharp,color: Colors.yellow,),
              SizedBox(width: 10,),
              Text("4.5 / 48 review"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget introductionDetails() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Introduction", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(fontSize: 12),),
          const SizedBox(height: 15,),
          Center(
            child: ElevatedButton(onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.play_circle_fill_rounded),
                  Text("Read Now"),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  fixedSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),),
          ),
        ],
      ),
    );
  }
}
