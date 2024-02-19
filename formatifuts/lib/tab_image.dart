import 'package:flutter/material.dart';

class TabImage extends StatefulWidget {
  const TabImage({super.key});

  @override
  State<TabImage> createState() => _TabImageState();
}

class _TabImageState extends State<TabImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image(
                image: NetworkImage(
                  'https://faunatis.com/gambar/gambar_besar/gecko.webp',
                ),
              ),
            ),
            Text('Ini adalah Gecko')
          ],
        ),
      ),
    );
  }
}
