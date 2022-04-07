import 'package:book_ui/screen/article/article.dart';
import 'package:book_ui/screen/bookmark/bookmark.dart';
import 'package:book_ui/screen/notification/notification.dart';
import 'package:book_ui/screen/book_details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> imageList = [
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/colorful-girl-book-cover-template-design-c637f3dfd17db04bbacda2032a12d1c2_screen.jpg?ts=1637013797",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/summer-themed-children%27s-book-cover-design-template-8a6ac74063d879df4e8774dc960399b2_screen.jpg?ts=1637012075",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/book-cover-design-for-children-s-book-flyer-template-de3994c2e8ee0bd3b9f7ffdda08b08ed_screen.jpg?ts=1636976470",
    "https://d19seqargx6mmp.cloudfront.net/product-images/s_5344.jpg",
    "https://i.pinimg.com/originals/e8/2f/cc/e82fcc725b3bd2120dd4622370882507.jpg",
    "https://images.squarespace-cdn.com/content/v1/573bf9761bbee0b32db4e9ff/1606730424152-JWX44X26UAB841Q3CVXE/Copy+of+Mermaid+Story+book+Childrens+Book+Cover.jpg",
  ];

  final List<String> listImage = [
    "https://marketplace.canva.com/EAD7YHrjZYY/1/0/1003w/canva-blue-illustrated-stars-children%27s-book-cover-haFtaSNXXF4.jpg",
    "https://i.pinimg.com/736x/28/22/cf/2822cf4c154d4ca6a26bf65107750b35.jpg",
    "https://getcovers.com/wp-content/uploads/2020/12/image22.jpg",
    "https://blog-cdn.reedsy.com/uploads/2019/12/boy-at-the-back.jpg",
    "https://assets.hongkiat.com/uploads/children-book-covers/chicken-cheeks.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     /* bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blueAccent.shade200
        ),
        child:
      ),*/
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
                  itemBuilder: (context, index) {
                    return Container(
                      height: 400,
                      width: 200,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const DetailsScreen(),
                                ));
                              },
                              child: Image.network(imageList[index],
                                height: 300,
                              width: 200,),
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
            itemCount: 5,
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
                  Image.network(listImage[index],
                  height: 100,
                  width: 80,),
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
