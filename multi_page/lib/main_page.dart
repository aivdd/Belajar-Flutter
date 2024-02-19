import 'package:flutter/material.dart';
import 'package:multi_page/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SecondPage();
                },
              ));
            },
            child: Text('Go to second page')),
      ),
    );
  }
}
