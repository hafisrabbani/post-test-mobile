import 'package:flutter/material.dart';
import '../widgets//player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            children: [
              ShortPage(
                accountName: 'Workshop Web',
                subscriber: '2M',
                price: '100.000',
                description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                likeCount: '1k',
                commentCount: '342',
                imageProfile:
                'https://source.unsplash.com/random/200x200?sig=1',
                imagePost: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-aU6V45T4TEEDoj4xfR0kWCpTMLFqpZQb3TOQbUIJyQ&s',
              ),
              ShortPage(
                accountName: 'Agile',
                subscriber: '1M',
                price: '30.000',
                description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                likeCount: '2k',
                commentCount: '327',
                imageProfile:
                'https://source.unsplash.com/random/200x200?sig=1',
                imagePost: 'https://ih1.redbubble.net/image.1702773716.8569/flat,750x,075,f-pad,750x1000,f8f8f8.u1.jpg',
              ),
              ShortPage(
                accountName: 'AWS',
                subscriber: '2M',
                price: '100.000',
                description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                likeCount: '2k',
                commentCount: '877',
                imageProfile:
                'https://source.unsplash.com/random/200x200?sig=1',
                imagePost: 'https://m.media-amazon.com/images/I/51NXb-EodmL.jpg',
              ),
            ],
          ),
          Positioned(
            top: 35,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 20,
                        offset:
                        const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 4),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 20,
                        offset:
                        const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
