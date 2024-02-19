import 'package:flutter/material.dart';

class TabText extends StatefulWidget {
  const TabText({super.key});

  @override
  State<TabText> createState() => _TabTextState();
}

class _TabTextState extends State<TabText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          color: Colors.black12,
          height: 300,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Id qui dolor ad eiusmod.')],
          )),
        ),
      ),
    );
  }
}
