import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Assets'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(3),
            child: const Image(
              image: AssetImage(
                "images/david.jpg",
              ),
              fit: BoxFit.cover,
            ),
            // child: Image(
            //   image: NetworkImage(
            //     'https://faunatis.com/gambar/gambar_besar/gecko.webp',
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
