import 'package:flutter/material.dart';
import 'package:merged/qr_scanner_page.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.cyan,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Your Merged Projects'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.qr_code_sharp),
                text: 'QR Code',
              ),
              Tab(
                icon: Icon(Icons.image),
                text: 'Image',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'List View',
              ),
              Tab(
                icon: Icon(Icons.qr_code_scanner_sharp),
                text: 'Scan QR',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                              child: Icon(Icons.qr_code_2_sharp),
                            ),
                            Text('QR code'),
                          ],
                        ),
                        Center(
                          child: QrImageView(
                            data: 'https://github.com/aivdd',
                            version: 10,
                            size: 200.0,
                            errorCorrectionLevel: QrErrorCorrectLevel.H,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // child: Card(
              //   elevation: 5,
              //   child: Row(
              //     children: [
              //       Container(
              //         margin: EdgeInsets.all(5),
              //         child: Icon(Icons.qr_code_2_sharp),
              //       ),
              //       Text('QR Code')
              //     ],
              //   ),
              // ),
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: Image(
                  image: NetworkImage(
                    'https://faunatis.com/gambar/gambar_besar/gecko.webp',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              // child: Image(
              //     image: NetworkImage(
              //         'https://faunatis.com/gambar/gambar_besar/gecko.webp')),
            ),
            Center(
              child: ListView(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                          'Proident exercitation dolor deserunt consectetur veniam. Occaecat nostrud mollit aliquip irure cillum occaecat. In tempor ut nostrud sunt proident esse magna est ut.'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return QrScannerPage();
                      },
                    ));
                  },
                  child: Text('Scan')),
            )
          ]),
        ),
      ),
    );
  }
}
