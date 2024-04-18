import 'package:binny_application/pages/homepage.dart';
import 'package:binny_application/pages/pointpage.dart';
import 'package:binny_application/pages/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/scan': (context) => HomePage(),
        '/point': (context) => PointPage(),
        '/profile': (context) => profilePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
