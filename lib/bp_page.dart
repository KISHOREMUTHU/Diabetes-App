import 'package:diabetics_and_bmi_app/high_bp.dart';
import 'package:diabetics_and_bmi_app/low_bp.dart';
import 'package:diabetics_and_bmi_app/normal.dart';
import 'package:flutter/material.dart';


class BPCalculator extends StatefulWidget {

  @override
  _BPCalculatorState createState() => _BPCalculatorState();
}

class _BPCalculatorState extends State<BPCalculator> {
  TextEditingController bp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Diabetic Classifier'),
        elevation : 0.2,
      ),
      body : SingleChildScrollView(

        child: Container(
          decoration : BoxDecoration(
            image : DecorationImage(
              image : AssetImage(
                  'assets/blood.png',
              ),

            ),
          ),
          child : Column(
            children: [
              SizedBox(
                height : 100,
              ),
              Container(
                padding : EdgeInsets.all(20),
                width : double.infinity -20,
                decoration : BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text('Enter your Blood Glucose Level in mg/dL',
                    style : TextStyle(
                      color : Colors.black,
                      fontSize : 20,
                     // fontWeight: FontWeight.bold,

                    ),),
                    SizedBox(height : 20),
                    Card(
                      color: Colors.transparent,

                      child : Padding(
                        padding: const EdgeInsets.only(left :8.0,right:8.0),
                        child: TextField(
                          keyboardType:TextInputType.number ,
                          textAlign: TextAlign.center,
                           controller : bp,
                          decoration : InputDecoration(
                            hintText : "Blood Glucose Level ",
                            fillColor : Colors.grey[200],
                            border : OutlineInputBorder(
                              borderRadius:BorderRadius.circular (8.0) ,
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(height : 250),
              Container(
                alignment: Alignment.bottomCenter,
                width : double.infinity-20,
                height : 200,

                child : FlatButton (
                  onPressed : (){
                    setState(() {
                      double BPcheck = double.parse(bp.value.text);
                      navigate(BPcheck);

                    });



                  },
                  color : Colors.grey[500],
                  child : Text ( 'Check Result',
                    style : TextStyle (
                      color : Colors.white,
                      fontSize :20.0,
                      fontWeight :FontWeight.bold ,
                    ),),


                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

    void navigate( double bp){

      if (bp < 90){

        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LowBp()));

      }
      if (bp >= 90 && bp < 140){

        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Normal()));


      }
      if (bp >= 140){

        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HighBp()));

      }

    }
}
