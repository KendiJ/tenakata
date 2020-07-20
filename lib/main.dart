import 'package:flutter/material.dart';
import 'package:tenakata_uni/forms.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Particulars",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Forms(),
    );
  }
}