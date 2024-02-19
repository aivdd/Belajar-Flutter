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
          backgroundColor: Colors.red,
          title: Text('Belajar Card'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Card(
                elevation: 5,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(Icons.account_box),
                    ),
                    //Icon(Icons.account_box),
                    Text('David Yusuf Rahmanto')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
