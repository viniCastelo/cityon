// import 'package:cityon/utils/colors/collors.dart';
import 'package:cityon/views/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: const [
          HomePage(),
        ],
      ),
    );
  }
}
