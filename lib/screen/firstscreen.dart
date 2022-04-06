import 'package:book_ui/screen/secondpage.dart';
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
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.book), onPressed: () {}),
            IconButton(icon: Icon(Icons.bookmark), onPressed: () {}),
            IconButton(icon: Icon(Icons.doorbell), onPressed: () {}),
          ],
        ),
      ),
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
            SizedBox(height: 20,),
            continueReading(),
          ],
        ),
      ),
    );
  }

  Widget bookList()  {
    return Container(
      height: 470,
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
              height: 410,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 400,
                      width: 200,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const SecondPage(),
                                ));
                              },
                              child: Image.network("https://marketplace.canva.com/EAD7YHrjZYY/1/0/1003w/canva-blue-illustrated-stars-children%27s-book-cover-haFtaSNXXF4.jpg"),
                            ),
                            SizedBox(height: 2,),
                            Text("Galaxy 101",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                            Text("by Anna", style: TextStyle(color: Colors.grey),),
                            ListTile(title: Text("4.5"),
                              trailing: Icon(Icons.star),),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, _) => SizedBox(
                    width: 10,
                  ),
                  itemCount: 6)
            ),
          )
        ],
      ),
    );
  }

  Widget continueReading() {
    return Container(
      color: Colors.white,
      height: 280,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Currently Reading", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text("See all", style: TextStyle(fontSize: 15, color: Colors.pinkAccent),),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Image(image: NetworkImage(   "https://www.afterglowmedia.com.au/wp-content/uploads/2018/11/HOA.jpg"),
                height: 200,width: 100,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text("Startup 101", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    const Text("by Jasmine", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                              width: 120,
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.all(20),
                              child: const LinearProgressIndicator(
                                value: 0.7,
                                minHeight: 7,
                              ),
                          ),
                          const Text("75%"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
