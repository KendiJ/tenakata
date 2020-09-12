import 'package:flutter/material.dart';
import 'package:tenakata_uni/shared/constants.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {

  final _formKey = GlobalKey<FormState>();

  final List<String> maritalStatus = ['Single', 'Married', 'Devoced'];

  String _maritalStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tenekata University"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/tenakata.png'),
              ),
              SizedBox(height: 10),

              Text("Kindly fill the following form", style: TextStyle(
                fontSize: 18, color: Colors.black
              ),),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'Enter Your Name'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: textInputDecoration.copyWith(hintText: 'Enter Your Age'),
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: textInputDecoration.copyWith(hintText: 'Enter Marital status'),
                        value: _maritalStatus,
                        items: maritalStatus.map((maritalStatus) {
                          return DropdownMenuItem(
                            child: Text('$maritalStatus'),
                            value: maritalStatus,
                          );
                        }) .toList(), 
                        onChanged: (val) => setState(() => _maritalStatus = val ),
                      ),
                      
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'Enter Your GPS Location'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: textInputDecoration.copyWith(hintText: 'Phone Number'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: textInputDecoration.copyWith(hintText: 'Enter Your IQ Test Result'),
                      ),
                      SizedBox(height: 20),

                      RaisedButton(
                        color: Colors.blue,
                        child: Text('Submit', style: TextStyle(color: Colors.white),),
                        onPressed: null
                      )
                    ],
                  ),

                ),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}