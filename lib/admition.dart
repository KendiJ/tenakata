import 'package:flutter/material.dart';

class AdmissibilityPage extends StatefulWidget {
  @override
  _AdmissibilityPageState createState() => _AdmissibilityPageState();
}

class _AdmissibilityPageState extends State<AdmissibilityPage> {

  int _counter = 0;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Tenaka University Admissability"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.school),
            iconSize: 50,
          )
        ],
      ),
      body: Container(),
    );
  }
}
