 
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
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _foods;

  // creating global keys to hold data

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // add a function that returns a widget from my widget tree start with _build to be consistent

  Widget _buildName() {
    return TextFormField(
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
    );
  }

  Widget _buildAge() {
    return TextFormField(
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
        _password = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Marital Status'),
      keyboardType: TextInputType.visiblePassword,
      // ignore: missing_return
      validator: (String value){
        if (value.isEmpty){
          return 'Password is required';
        }
      },
      // add a parameter for the mane too be saved.
      onSaved: (String value){
        _password = value;
      },
    );
  }

  Widget _buildUrl() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'GPS Location'),
      keyboardType: TextInputType.url,
      // ignore: missing_return
      validator: (String value){
        if (value.isEmpty){
          return 'URL is required';
        }
      },
      // add a parameter for the mane too be saved.
      onSaved: (String value){
        _url = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
    decoration: InputDecoration(labelText: 'Phone Number'),
    keyboardType: TextInputType.phone,
    // ignore: missing_return
    validator: (String value){
      if (value.isEmpty){
        return 'Phone Number is required';
      }
    },
    // add a parameter for the mane too be saved.
    onSaved: (String value){
      _phoneNumber = value;
    },
  );
  }

  Widget _buildFoods() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'IQ Test Result'),
      keyboardType: TextInputType.number,
      // ignore: missing_return
      validator: (String value){
        if (value.isEmpty){

          int foods = int.tryParse(value);

          if (foods == null || foods <= 0) {
            return 'Foods must be greater than 0';
          }

        }
      },
      // add a parameter for the mane too be saved.
      onSaved: (String value){
        _password = value;
      },
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
              _buildPassword(),
              _buildUrl(),
              _buildPhoneNumber(),
              _buildFoods(),
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
                  print(_email);
                  print(_password);
                  print(_url);
                  print(_phoneNumber);
                  print(_foods);
                } ,
              )
            ],
          ),
        ),
      ),
    );
  }

}