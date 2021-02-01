import 'package:flutter/material.dart';

class HighBp extends StatefulWidget {
  @override
  _HighBpState createState() => _HighBpState();
}

class _HighBpState extends State<HighBp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar : AppBar(
        title : Text('Result'),
        elevation : 0.2,
      ),
      body : SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Center(
              child: Container(
                padding : EdgeInsets.all(20),
                height : 140,
                width : double .infinity,
                child : Column(
                  children: [
                    Center(
                      child: Text(
                        'Oh No !!!!!',
                        style : TextStyle(
                          color : Colors.black,
                          fontSize : 25,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Center(
                      child: Text(

                        'It seems that you have Diabetes.',
                        style : TextStyle(


                          color : Colors.black,
                          fontSize : 20,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width : 250,
              height : 220,
              padding: EdgeInsets.all(20),
              decoration : BoxDecoration(
                image : DecorationImage(
                  image : AssetImage('assets/high.jpg'),
                ),
              ),
            ),
            SizedBox(height : 10),
            Container(
              padding : EdgeInsets.all(20),
              height : 140,
              width : double .infinity,
              child : Text(
                'It is strongly recommended to see a doctor for your complete diagnosis.',
                style : TextStyle(
                  color : Colors.red,
                  fontSize : 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height : 10),
            Container(
              height : 240,
              decoration : BoxDecoration(
                color : Colors .yellowAccent,
                borderRadius: BorderRadius.circular(40),

              ),
              padding : EdgeInsets.all(20),
              child : Column (
                crossAxisAlignment : CrossAxisAlignment.start,
                children : [

                  Text('CAUSES',
                    style : TextStyle(
                      fontSize :20,
                      fontWeight:FontWeight.bold,
                    ),),
                  SizedBox(height : 10),
                  Text ('    1)  Weight. The more fatty tissue you have, the more resistant your cells become to insulin.'),
                  Text ('    2)  Inactivity.'),
                  Text ('    3)  Family history'),
                  Text ('    4)  Race or ethnicity. '),

                  Text ('    5)  Sedentary lifestyle.'),
                  Text ('    6)  Being obese or overweight.'),
                  Text ('    7)  Elevated levels of triglycerides and low levels of "good" cholesterol (HDL)'),

                ],
              ),
            ),
            SizedBox (height :20),
            Container(
              height : 220,
              decoration : BoxDecoration(
                color : Colors .redAccent,
                borderRadius: BorderRadius.circular(40),
              ),
              padding : EdgeInsets.all(20),
              child : Column (
                crossAxisAlignment : CrossAxisAlignment.start,

                children : [

                  Text('RISK FACTORS',
                    style : TextStyle(
                      fontSize :20,
                      fontWeight:FontWeight.bold,
                    ),),
                  SizedBox(height : 10),
                  Text ('    1)  High Chances of Stroke.'),
                  Text ('    2)  Lack of Consciousness'),
                  Text ('    3)  Extreme thirst'),
                  Text ('    4)  Visual Disturbances'),
                  Text ('    5)  Risk of Heart Disease, Infections , Pancreas Malfunctions and Gastroparasis'),
                  Text ('    6)  Nerve and Blood Vessel Damage'),
                  Text ('    7)  Excessive Urination'),


                ],
              ),
            ),
            SizedBox (height :20),

            Container(
              height : 250,
              width : double.infinity,
              decoration : BoxDecoration(
                color : Colors .greenAccent,
                borderRadius: BorderRadius.circular(40),

              ),
              padding : EdgeInsets.all(20),
              child : Column (
                crossAxisAlignment : CrossAxisAlignment.start,

                children : [

                  Text('DIET PRACTICES',
                    style : TextStyle(
                      fontSize :20,
                      fontWeight:FontWeight.bold,
                    ),),
                  SizedBox(height : 10),
                  Text ('    1)  Raw, Cooked, or Roasted Vegetables. These add color, flavor, and texture to a meal.'),
                  Text ('    2)  Greens. '),
                  Text ('    3)  Protein'),
                  Text ('    4)  Flavorful, Low-calorie Drinks.'),
                  Text ('    5)  Melon or Berries'),
                  Text ('    6)  A Very Little Fat'),
                  Text ('    7)  Whole-grain, Higher-fiber Foods'),




                ],
              ),
            ),



            SizedBox (height :20),

          ],
        ),
      ),
    );
  }
}
