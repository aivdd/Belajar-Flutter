import 'package:flutter/material.dart';
import 'package:merged/tab_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return TabView();
                },
              ));
            },
            child: Text('Login')),
      ),
    );
  }
}
