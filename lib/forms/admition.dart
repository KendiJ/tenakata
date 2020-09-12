import 'package:flutter/material.dart';

class AdmissibilityPage extends StatefulWidget {
  @override
  _AdmissibilityPageState createState() => _AdmissibilityPageState();
}

class _AdmissibilityPageState extends State<AdmissibilityPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Tenaka University Admissability"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.school),
            iconSize: 50, onPressed: () {  },
          )
        ],
      ),
      body: Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[],
      ),
    )
    );
    
    
  }
}
