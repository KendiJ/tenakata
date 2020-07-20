 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tenakata_uni/admition.dart';

class Forms extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return FormScreenState();
  }
}

class FormScreenState extends State<Forms> {

  String _name;
  String _age;
  String _maritalStatus;
  String _gps;
  String _photo;
  String _iq;

  // creating global keys to hold data

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // add a function that returns a widget from my widget tree start with _build to be consistent

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(fontSize: 17, color:Colors.black, fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(labelText: 'Name:'),
        // ignore: missing_return
        validator: (String value){
          if (value.isEmpty){
            return 'Name is required';
          }
        },
        // add a parameter for the mane too be saved.
        onSaved: (String value){
          _name = value;
        },
      ),
    );
  }

  Widget _buildAge() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(fontSize: 17, color:Colors.black, fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(labelText: 'Age:'),
        keyboardType: TextInputType.number,
        // ignore: missing_return
        validator: (String value){
          if (value.isEmpty){

            int age = int.tryParse(value);

            if (age == null || age <= 0) {
              return 'Age must be greater than 0';
            }

          }
        },
        // add a parameter for the mane too be saved.
        onSaved: (String value){
          _age = value;
        },
      ),
    );
  }

  Widget _buildMaritalStatus() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(fontSize: 17, color:Colors.black, fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(labelText: 'Marital Status:'),
        keyboardType: TextInputType.text,
        // ignore: missing_return
        validator: (String value){
          if (value.isEmpty){
            return 'Marital status is required';
          }
        },
        // add a parameter for the mane too be saved.
        onSaved: (String value){
          _maritalStatus = value;
        },
      ),
    );
  }

  Widget _buildGps() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(fontSize: 17, color:Colors.black, fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(labelText: 'GPS Location:'),
        keyboardType: TextInputType.url,
        // ignore: missing_return
        validator: (String value){
          if (value.isEmpty){
            return 'GPS Location is required';
          }
        },
        // add a parameter for the mane too be saved.
        onSaved: (String value){
          _gps = value;
        },
      ),
    );
  }

  Widget _buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(fontSize: 17, color:Colors.black, fontWeight: FontWeight.bold
        ),
      decoration: InputDecoration(labelText: 'Photo: '),
      keyboardType: TextInputType.phone,
      // ignore: missing_return
      validator: (String value){
        if (value.isEmpty){
          return 'Please insert your photo';
        }
      },
      // add a parameter for the mane too be saved.
      onSaved: (String value){
        _photo = value;
      },
  ),
    );
  }

  Widget _buildIq() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(fontSize: 17, color:Colors.black, fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(labelText: 'IQ Test Result:'),
        keyboardType: TextInputType.number,
        // ignore: missing_return
        validator: (String value){
          if (value.isEmpty){

            int iq = int.tryParse(value);

            if (iq == null || iq <= 0) {
              return 'IQ must be greater than 0';
            }

          }
        },
        // add a parameter for the mane too be saved.
        onSaved: (String value){
          _iq = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tenakata University"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //add functions
            children: <Widget>[
              _buildName(),
              _buildAge(),
              _buildMaritalStatus(),
              _buildGps(),
              _buildPhoto(),
              _buildIq(),
              // add a space using SizedBox
              SizedBox(height: 100,),
              RaisedButton(
                child: Text("Submit", style: TextStyle(color: Colors.purple, fontSize: 20),),
                onPressed: () {
                  if(!_formKey.currentState.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AdmissibilityPage()));
                  }

                    // this calls the method of each onsaved
                  _formKey.currentState.save();

                  print(_name);
                  print(_age);
                  print(_maritalStatus);
                  print(_gps);
                  print(_photo);
                  print(_iq);
                } ,
              )
            ],
          ),
        ),
      ),
    );
  }

}