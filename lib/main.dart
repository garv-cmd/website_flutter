import 'dart:io';

import 'package:flutter/material.dart';
import 'package:websitenew/homeScreen.dart';
import 'package:websitenew/makeNavbar.dart';
import 'package:websitenew/secondpage.dart';

void main() {
  runApp(MyApp());
}

// homescreen image - https://i.pinimg.com/originals/7e/94/7a/7e947ab011fdfdf719fd23a5a945087c.jpg
// oct image - https://img2.pngio.com/free-black-and-white-octopus-clipart-download-free-clip-art-free-black-and-white-octopus-png-2752_2065.png
// third screen - https://mewallpaper.com/thumbnail/abstract/6976-tree-winter-snow-minimal-hd-download-hd-wallpaper.jpg
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context)
                  .size
                  .height, //takes up the complete height available
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/7e/94/7a/7e947ab011fdfdf719fd23a5a945087c.jpg'))),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //now we will make navbar
                  MakeNavbar(),
                  Spacer(),
                  //Text
                  MakeHomescreen(),
                  //purchase button

                  Spacer(),
                ],
              ),
            ),
            SecondPage(),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://mewallpaper.com/thumbnail/abstract/6976-tree-winter-snow-minimal-hd-download-hd-wallpaper.jpg'))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'THANK YOU',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image(
                            height: 30,
                            image: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/YouTube_dark_icon_%282017%29.svg/1200px-YouTube_dark_icon_%282017%29.svg.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image(
                            height: 40,
                            image: NetworkImage(
                                'https://cdn3.iconfinder.com/data/icons/social-media-black-white-1/1024/instagram-512.png'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
