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
          title: const Text("Aplikasi Row Column"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              margin: const EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              margin: const EdgeInsets.only(bottom: 10),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              margin: const EdgeInsets.only(bottom: 10),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amber,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
