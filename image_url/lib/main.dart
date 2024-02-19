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
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('image url'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(3),
            child: Image(
              image: NetworkImage(
                'https://faunatis.com/gambar/gambar_besar/gecko.webp',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
