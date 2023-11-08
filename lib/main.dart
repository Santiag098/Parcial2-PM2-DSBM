import 'package:flutter/material.dart';
import 'package:parcial2_/homePage.dart';
import 'package:parcial2_/Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial 2 PM2',
      home: HomePage(),
    );
  }
}