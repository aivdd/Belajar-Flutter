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
          title: Text("Stack & Align"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Fugiat id excepteur sint ex. Nisi eiusmod dolore ullamco culpa ad do magna dolor aliqua. Sunt qui velit velit quis laboris eu eiusmod fugiat laborum consequat velit. Consectetur labore ex Lorem id ut labore est magna reprehenderit irure adipisicing et ex qui.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment(0, 0.9),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
