import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShortsScreen(),
    );
  }
}

class ShortsScreen extends StatelessWidget {
  final List<String> images = [
    '/Users/subhaprabhakarasameer/Downloads/150106-2880x1620-desktop-hd-virat-kohli-background-photo.jpg',
    '/Users/subhaprabhakarasameer/Downloads/101161-3840x2160-desktop-4k-cristiano-ronaldo-wallpaper-photo.jpg',
    '/Users/subhaprabhakarasameer/Downloads/2015793-2000x1333-desktop-hd-walter-white-wallpaper.jpg',
    '/Users/subhaprabhakarasameer/Downloads/930016-2048x3642-iphone-hd-monkey-d-luffy-background-image.jpg',
    '/Users/subhaprabhakarasameer/Downloads/1215971-3840x2160-desktop-4k-goku-background-photo.jpg',
  ];
  final List<String> channels = [
    "@BenStokes",
    "@Suiiiiiiiii",
    "@SayMyName",
    "@Kaizoku",
    "@RoshiSensei"
  ];
  final List<Map<String, dynamic>> actionsData = [
    {
      'likes': '82M',
      'dislikes': 'Dislike',
      'comments': '5M',
      'shares': 'Share',
      'remix': '2M',
    },
    {
      'likes': '2.1M',
      'dislikes': 'Dislike',
      'comments': '3200',
      'shares': 'Share',
      'remix': '25K',
    },
    {
      'likes': '980K',
      'dislikes': 'Dislike',
      'comments': '1200',
      'shares': 'Share',
      'remix': '9K',
    },
    {
      'likes': '3.5M',
      'dislikes': 'Dislike',
      'comments': '150K',
      'shares': 'Share',
      'remix': '40K',
    },
    {
      'likes': '780K',
      'dislikes': 'Dislike',
      'comments': '850',
      'shares': 'Share',
      'remix': '7K',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children :[
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned(
                    top: 410,
                    right: 10,
                    child: Column(
                      children: [
                        Icon(FontAwesomeIcons.thumbsUp,color: Colors.white,),
                        SizedBox(height: 5),
                        Text(actionsData[index]['likes'],
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.thumbsDown,color: Colors.white),
                        SizedBox(height: 5),
                        Text(actionsData[index]['dislikes'],
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.message,color: Colors.white),
                        SizedBox(height: 5),
                        Text(actionsData[index]['comments'],
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.share,color: Colors.white),
                        SizedBox(height: 5),
                        Text(actionsData[index]['shares'],
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.creativeCommonsRemix,color: Colors.white),
                        SizedBox(height: 5),
                        Text(actionsData[index]['remix'],
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 10,
                    child: buildRow(),
                  ),
                  Positioned(
                    top: 690,
                    left: 15,
                    child: Row(
                      children: [
                        getAvatarImage(images[index]),
                        SizedBox(width: 5,),
                        Text(channels[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Subscribe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 95,
              width: 398,
              decoration: BoxDecoration(
                color: Colors.black
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Shorts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 27),),
                    SizedBox(width: 195,),
                    Icon(Icons.search,color: Colors.white,size: 30,),
                    SizedBox(width: 10,),
                    Icon(Icons.more_vert,color: Colors.white,size: 30,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.youtube_searched_for,color: Colors.white), label: "Shorts"),
          BottomNavigationBarItem(icon: Column(children: [SizedBox(height: 5),CircleAvatar(radius: 12,backgroundColor: Colors.grey,child: Icon(Icons.add,color: Colors.white,),)],),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions,color: Colors.white), label: "Subs"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white), label: "You"),
        ],
      ),
    );
  }
}

Widget buildRow(){
  return Row(
   children: [
     buildEach(Icons.subscriptions,"Subscriptions   "),
     SizedBox(width: 5,),
     buildEach(Icons.live_tv,"Live   "),
     SizedBox(width: 5,),
     buildEach(FontAwesomeIcons.fire,"Trend   "),
     SizedBox(width: 5,),
     buildEach(FontAwesomeIcons.bagShopping, "Shopping   ")
   ],
  );
}

Widget buildEach(IconData data, String txt) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Icon(data, color: Colors.white, size: 20),
          ),
          SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              txt,
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget getAvatarImage(String img){
  return CircleAvatar(
    radius: 15,
    backgroundColor: Colors.white,
    backgroundImage: AssetImage(img)
  );
}