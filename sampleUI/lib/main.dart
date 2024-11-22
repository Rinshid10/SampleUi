import 'package:flutter/material.dart';
import 'package:newwwww/bottomNavigato.dart';
import 'package:newwwww/homePage.dart';
import 'package:newwwww/next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
