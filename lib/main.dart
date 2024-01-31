import 'package:flutter/material.dart';
import 'package:matrimonial_ui/pages/home_page.dart';

void main() => runApp(MyMatrimonialApp());

class MyMatrimonialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrimonial App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

