import 'package:diabetics_and_bmi_app/bmi.dart';
import 'package:diabetics_and_bmi_app/bp_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.grey,
        title : Text('DietMaster'),

        elevation : 0.2,
      ),

      body : Container(
        child : Center(
          child: Column(
            children :[
              SizedBox(height: 30,),
              Container(
                padding : EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color : Colors.brown,
                ),
                height : 250,
                width : 300,

                child: FlatButton(
                  child : Center(
                    child: Text('Check your BMI',
                    style : TextStyle(
                      color : Colors.white,
                      fontSize : 30,
                    ),),
                  ),
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BmiCalculator()));
                  },
                ),
              ),
              SizedBox(height:30),
              Container(
                padding : EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color : Colors.lime,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height : 250,
                width :  300,

                child: FlatButton(
                  child : Text('Check your Diabetic Level',
                  style:TextStyle(
                    fontSize:30,
                    color : Colors.white,
                  ),),
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BPCalculator()));
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

