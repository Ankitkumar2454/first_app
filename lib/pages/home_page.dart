import 'package:doremon_world/model/catalog.dart';
import 'package:doremon_world/widgits/drawer.dart';
import 'package:doremon_world/widgits/item_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          // backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              'Cartoon world',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 5.0,
                  letterSpacing: 2.0),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage(
                    'https://toppng.com/uploads/preview/doraemon-png-photos-nobita-and-doraemon-hd-11562969641lbro8rk8lr.png',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'D O R E M O N',
                      style:
                          TextStyle(fontSize: 30, backgroundColor: Colors.red),
                    ),
                  ],
                ),
                Container(
                  child: const Text(
                    'FRIENDS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 300,
                  child: const Image(
                    // fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://www.hdwallpapersfreedownload.com/uploads/large/cartoons/doraemon-nobita-wallpaper-hd.jpg',
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 300,
                  child: const Image(
                    // fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://mcdn.wallpapersafari.com/medium/93/48/2Khven.jpg',
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 300,
                  child: const Image(
                    // fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://clipart.world/wp-content/uploads/2020/06/hero-doraemon.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Mydrawer(),
      ),
    );
  }
}
