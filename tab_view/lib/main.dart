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
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab View'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.android),
                text: 'Android',
              ),
              Tab(
                icon: Icon(Icons.computer),
                text: 'Computer',
              ),
              Tab(
                icon: Icon(Icons.comment),
                text: 'comment',
              ),
              Tab(
                icon: Icon(Icons.alarm),
                text: 'alarm',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
            Center(
              child: Text('Tab 4'),
            ),
          ]),
        ),
      ),
    );
  }
}
