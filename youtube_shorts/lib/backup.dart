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
    'https://documents.bcci.tv/resizedimageskirti/164_compress.png',
    'https://i0.wp.com/cdn.editorji.com/65315c071eb15_3.jpg?strip=all',
    'https://english.cdn.zeenews.com/sites/default/files/2024/10/05/1535993-untitled-design-32.jpg',
    'https://crictoday.com/wp-content/uploads/2024/05/Virat-Kohli-2.webp',
    'https://cricfit.com/wp-content/uploads/2023/05/img_192351_viratkohli.jpg',
  ];

  final List<Map<String, dynamic>> actionsData = [
    {
      'likes': '1.4M',
      'dislikes': 'Dislike',
      'comments': '4095',
      'shares': 'Share',
      'remix': '19K',
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
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.network(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned(
                    top: 400,
                    right: 20,
                    child: Column(
                      children: [
                        Icon(FontAwesomeIcons.thumbsUp),
                        SizedBox(height: 5),
                        Text(actionsData[index]['likes'],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.thumbsDown),
                        SizedBox(height: 5),
                        Text(actionsData[index]['dislikes'],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.message),
                        SizedBox(height: 5),
                        Text(actionsData[index]['comments'],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.share),
                        SizedBox(height: 5),
                        Text(actionsData[index]['shares'],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Icon(FontAwesomeIcons.creativeCommonsRemix),
                        SizedBox(height: 5),
                        Text(actionsData[index]['remix'],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.youtube_searched_for), label: "Shorts"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "You"),
        ],
      ),
    );
  }
}
