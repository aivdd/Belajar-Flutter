import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   for (var i = 0; i <= 20; i++) {
  //     widgets.add(Text(
  //       "Data ke-$i",
  //       style: const TextStyle(fontSize: 90),
  //     ));
  //   }
  // }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'undown',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Aplikasi List view'),
          ),
          body: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.add(Text(
                            "Data ke-$counter",
                            style: TextStyle(fontSize: 35),
                          ));
                          counter++;
                        });
                      },
                      child: Text('Tambah Data')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      },
                      child: Text('Hapus Data')),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              )
            ],
          )),
    );
  }
}

//flexible row column
// return MaterialApp(
//       title: 'undown',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Aplikasi ke-2'),
//         ),
//         body: Column(
//           children: [
//             Flexible(
//               child: Row(
//                 children: [
//                   Flexible(
//                     flex: 2,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.red,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 2,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.green,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 2,
//                     child: Container(
//                       margin: EdgeInsets.all(5),
//                       color: Colors.purple,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 2,
//               child: Container(
//                 margin: EdgeInsets.all(5),
//                 color: Colors.amber,
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: Container(
//                 margin: EdgeInsets.all(5),
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );