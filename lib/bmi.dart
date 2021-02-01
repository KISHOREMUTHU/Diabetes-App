import 'package:diabetics_and_bmi_app/check_your_diet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class BmiCalculator extends StatefulWidget {
  BmiCalculator({Key key}) : super (key: key);
  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int currentindex = 0;
  String result = "";
  TextEditingController height =TextEditingController();
  TextEditingController weight =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Builder(

      builder:(BuildContext context) => Scaffold(
          appBar : AppBar (

            title : Text ('   BMI Calculator',
            style : TextStyle(
              color : Colors.white,


            ),),
            elevation : 0.2,
            backgroundColor: Colors.grey,
            actions: <Widget>[
              IconButton(
                onPressed : (){},
                icon : Icon(

                    Icons.settings,
                color : Colors.white,),
              ),
            ],
          ),
          body : Builder(
            builder : (BuildContext context) =>
             Container(
              decoration : BoxDecoration(
                image : DecorationImage(
                  image : AssetImage('assets/muscle.jpg'),
                  fit : BoxFit.fill,

                ),
              ),
              child: SingleChildScrollView(
                child: Padding (
                  padding : const EdgeInsets.all(12.0),
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children : [
/*
                      Row(
                        children: [
                          ratioButton("Man", Colors.blue, 0),
                          ratioButton("Woman", Colors.pink, 1),

                        ],
                      ),
*/                                     SizedBox(height :70),

                      SizedBox(height : 20),
                     Center(
                       child: Text ("Your Height In CM : ",
                       style : TextStyle (
                         fontSize :25.0 ,
                         fontWeight : FontWeight.bold,
                       ),),
                     ),
                     SizedBox(height : 10.0,),
                     TextField(
                       keyboardType:TextInputType.number ,
                       textAlign: TextAlign.center,
                       controller : height,
                       decoration : InputDecoration(
                         hintText : "Height in centimetres",
                         fillColor : Colors.grey[200],
                         border : OutlineInputBorder(
                           borderRadius:BorderRadius.circular (8.0) ,
                           borderSide: BorderSide.none,
                         ),
                       ),
                     ),

                      SizedBox(height : 20.0),
                      Center(
                        child: Text ("Your Weight in KG : ",
                          style : TextStyle (
                            fontSize :25.0 ,
                            fontWeight : FontWeight.bold,
                          ),),
                      ),
                      SizedBox(height : 10.0),

                      TextField(
                        keyboardType:TextInputType.number ,
                        textAlign: TextAlign.center,
                        controller : weight,
                        decoration : InputDecoration(
                          hintText : "Weight in Kilograms",
                          fillColor : Colors.grey[200],
                          border : OutlineInputBorder(
                            borderRadius:BorderRadius.circular (8.0) ,
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    SizedBox (height : 40),
                      Container(
                        height :50,
                        width : double .infinity,
                        child : FlatButton (
                          onPressed : (){
                            setState(() {
                              double h = double.parse(height.value.text);
                              double w = double.parse(weight.value.text);
                              answer(h,w,context);

                            });



                          },
                          color : Colors.grey[500],
                          child : Text ( 'Calculate',
                          style : TextStyle (
                            color : Colors.white,
                           fontSize :15.0,
                           fontWeight :FontWeight.bold ,
                          ),),


                        ),
                      ),
                      SizedBox (height : 30.0),
                      Center(
                        child: Text('Your BMI is : ',
                         textAlign: TextAlign.center,
                          style : TextStyle (
                            fontSize : 30.0,
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                      SizedBox (height : 20.0),

                      Container(

                        width : double .infinity,
                        child : Text(
                        '$result',
                        textAlign : TextAlign.center,
                        style : TextStyle (
                          fontSize : 40,
                          fontWeight : FontWeight.bold,
                        ),),
                      ),
                     SizedBox(height :200),
                     Container(
                       height : 50,
                       width : double.infinity,
                       color : Colors.grey[500],
                       padding  : EdgeInsets.all(10.0),
                       child : FlatButton (
                         child : Text ("See Diet Suggestions",style: TextStyle(
                           color : Colors.grey[50],
                           fontSize : 15,
                           fontWeight :FontWeight.bold,
                         ),),
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DietCheck()));                   },
                       ),
                     ),
                    ],
                  ),
                ),
              ),
            ),
          ),

      ),
    );
  }

  void answer(double height , double weight,BuildContext context){

    if( height ==null) {
       var finalresult =0;
      setState(() {
        result = finalresult.toStringAsFixed(2);
      });
    }
    else{
      var finalresult =( 10000 * weight  / ( height * height) );
      String bmi =  finalresult.toStringAsFixed(2);
      setState(() {
        result = bmi;
      });
      if (finalresult < 18.5) {
        final snackbar = SnackBar(
          content: Text("You are underweight . See our diet suggestions to improve your BMI",
               style : TextStyle (
                 fontSize : 18.0,
                 color : Colors.white,
               ),),
          backgroundColor: Colors.amberAccent,



        );
        Scaffold.of(context).showSnackBar(snackbar);

      }
      if (finalresult > 18.5 && finalresult <25.0 ) {
        final snackbar = SnackBar(
          content: Text("You are fit and healthy. See our diet suggestions to maintain your BMI",
            style : TextStyle (
              fontSize : 18.0,
              color : Colors.white,
            ),),
          backgroundColor: Colors.greenAccent,



        );
        Scaffold.of(context).showSnackBar(snackbar);

      }
      if (finalresult >= 25.0 && finalresult <30) {
        final snackbar = SnackBar(
          content: Text("You are overweight . See our diet suggestions to improve your BMI",
            style : TextStyle (
              fontSize : 18.0,
              color : Colors.white,
            ),),
          backgroundColor: Colors.orangeAccent,



        );
        Scaffold.of(context).showSnackBar(snackbar);

      }
      if (finalresult >=30.0 ) {
        final snackbar = SnackBar(
          content: Text("You are underweight . See our diet suggestions to improve your BMI",
            style : TextStyle (
              fontSize : 18.0,
              color : Colors.white,
            ),),
          backgroundColor: Colors.redAccent,



        );
        Scaffold.of(context).showSnackBar(snackbar);

      }



    }

  }
  void changeIndex (int index ){
    setState(() {
      currentindex = index;
    });
  }

  Widget  ratioButton (String value ,Color color,int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        height: 80,
        child: FlatButton(

          color: currentindex == index ? color : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0
            ),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ),
    );
  }
}
