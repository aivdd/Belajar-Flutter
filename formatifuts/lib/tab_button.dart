import 'package:flutter/material.dart';

class TabButton extends StatefulWidget {
  const TabButton({super.key});

  @override
  State<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 24 + number.toDouble()),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = number + 1;
                  });
                },
                child: Text('Button'))
          ],
        ),
      ),
    );
  }
}
