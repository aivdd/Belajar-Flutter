import 'package:flutter/material.dart';
import 'package:formatifuts/tab_button.dart';
import 'package:formatifuts/tab_image.dart';
import 'package:formatifuts/tab_list.dart';
import 'package:formatifuts/tab_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formatif UTS',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black12),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: Typography.blackHelsinki,
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Formatif UTS'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.text_format_sharp),
                text: 'Text',
              ),
              Tab(
                icon: Icon(Icons.image),
                text: 'Image',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'list',
              ),
              Tab(
                icon: Icon(Icons.radio_button_checked),
                text: 'Button',
              )
            ]),
          ),
          body: TabBarView(children: [
            TabText(),
            TabImage(),
            TabList(),
            TabButton(),
          ]),
        ),
      ),
    );
  }
}
