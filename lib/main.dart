import 'package:flutter/material.dart';
import 'package:instagram/pages/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram - cubos',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ProfilePage(),
    );
  }
}
