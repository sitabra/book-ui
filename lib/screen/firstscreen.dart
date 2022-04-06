import 'package:book_ui/screen/listscreen.dart';
import 'package:book_ui/screen/notificationscreen.dart';
import 'package:book_ui/screen/savedscreen.dart';
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
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const FirstScreen(),
              ));
            }),
            IconButton(icon: Icon(Icons.list_alt), onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const ListScreen(),
              ));
            }),
            IconButton(icon: Icon(Icons.bookmark), onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const SavedScreen(),
              ));
            }),
            IconButton(icon: Icon(Icons.notifications), onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const NotificationScreen(),
              ));
            }),
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
            continueReading(context),
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
                            const SizedBox(height: 2,),
                            const Text("Galaxy 101",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("by Anna", style: TextStyle(color: Colors.grey),),
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text("4.5"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, _) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: 6,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget continueReading(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Continue Reading',
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          child: ListView.builder(
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ]
              ),
              child: Row(
                children: [
                  Image.network("https://i.pinimg.com/736x/28/22/cf/2822cf4c154d4ca6a26bf65107750b35.jpg",
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        "Startup 101",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("by Jasmine",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 150,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 10,
                              width: 110,
                              alignment: Alignment.topLeft,
                              child: const LinearProgressIndicator(
                                value: 0.7,
                                minHeight: 7,
                              ),
                            ),
                            SizedBox(width: 5,),
                            const Text("75%"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
