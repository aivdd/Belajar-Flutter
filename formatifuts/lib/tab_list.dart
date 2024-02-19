import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TabList extends StatefulWidget {
  const TabList({Key? key}) : super(key: key);

  @override
  State<TabList> createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  late Future<List<Brand>> brandData;

  @override
  void initState() {
    super.initState();
    brandData = fetchBrand();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<Brand>>(
              future: brandData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData) {
                  return Text('No data available');
                } else {
                  return Column(
                    children: [
                      for (var brand in snapshot.data!)
                        Text('Brand: ${brand.nama_brand}'),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            brandData = fetchBrand(); // Refresh brand data
                          });
                        },
                        child: Text('Refresh'),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future<List<Brand>> fetchBrand() async {
  String baseUrl = "https://4dd2-114-124-130-51.ngrok-free.app/";
  final response = await http.get(Uri.parse("${baseUrl}get-brand"));
  final jsonObject = jsonDecode(response.body);

  List<dynamic> listbrand = (jsonObject as Map<String, dynamic>)['data'];

  List<Brand> brands = [];
  for (int i = 0; i < listbrand.length; i++) {
    brands.add(Brand.fromJson(listbrand[i]));
  }
  return brands;
}

class Brand {
  final String id_brand;
  final String nama_brand;
  final String produsen_brand;

  const Brand({
    required this.id_brand,
    required this.nama_brand,
    required this.produsen_brand,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id_brand: json['id_brand'].toString(),
      nama_brand: json['nama_brand'].toString(),
      produsen_brand: json['produsen_brand'].toString(),
    );
  }
}
