import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/b/profile-icon-male-avatar-portrait-casual-person-silhouette-face-flat-design-vector-46846325.jpg"),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bookList(),
          ],
        ),
      ),
    );
  }

  Widget bookList()  {
    return Container(
      height: 480,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Books For You", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text("See all", style: TextStyle(fontSize: 15, color: Colors.pinkAccent),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              color: Colors.white,
              height: 400,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 400,
                      width: 200,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Image(image: NetworkImage("https://i.pinimg.com/236x/b1/28/7c/b1287cdbfa6e0cee7d844e6db949b840--jeffers-oliver-stuck-up.jpg",)),
                          SizedBox(height: 10,),
                          Text("Galaxy 101",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                          Text("by Anna", style: TextStyle(color: Colors.grey),),
                          ListTile(title: Text("4.5"),
                          trailing: Icon(Icons.star),),
                        ],
                      ),
                      ),
                    );
                  } ),
            ),
          )
        ],
      ),
    );
  }

  Widget continueReading() {
    return Container(
    );
  }
}
