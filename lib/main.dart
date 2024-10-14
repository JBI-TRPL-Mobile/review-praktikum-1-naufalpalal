import 'package:flutter/material.dart';
import 'package:template_project/detailbuku_page.dart';
import 'package:template_project/tentangapk_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Buku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailBukuPage(),
        '/about': (context) => TentangAplikasiPage(), // Rute ini sesuai dengan navigasi
      },
    );
  }
}
