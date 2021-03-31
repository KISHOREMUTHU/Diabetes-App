import 'package:flutter/material.dart';

class LowBp extends StatefulWidget {
  @override
  _LowBpState createState() => _LowBpState();
}

class _LowBpState extends State<LowBp> {
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

                        'It seems that you have a Low Blood Pressure.',
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
              height : 250,
              padding: EdgeInsets.all(20),
              decoration : BoxDecoration(
                image : DecorationImage(
                  image : AssetImage('assets/low.jpg'),
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height : 220,
                decoration : BoxDecoration(
                  color : Colors .amber[300],
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
                    Text ('    1)  Getting up after you sit or lie down.'),
                    Text ('    2)  Standing for a long time'),
                    Text ('    3)  Not drinking enough fluids (dehydration).'),
                    Text ('    4)  Medicines, such as high blood pressure medicine or other heart medicines.'),
                    Text ('    5)  Health problems such as thyroid disease, severe infection, bleeding in the intestines, or heart problems.'),

                  ],
                ),
              ),
            ),
            SizedBox (height :20),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height : 220,
                decoration : BoxDecoration(
                  color : Colors.redAccent,
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
                    Text ('    1)  Dizziness or lightheadedness.'),
                    Text ('    2)  Nausea.'),
                    Text ('    3)  Fainting (syncope)'),
                    Text ('    4)  Dehydration and unusual thirst.'),
                    Text ('    5)  Dehydration can sometimes cause blood pressure to drop.'),
                    Text ('    6)  Lack of concentration.'),
                    Text ('    7)  Blurred vision.'),


                  ],
                ),
              ),
            ),
            SizedBox (height :20),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height : 230,
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
                    Text ('    1)  Drink Plenty of Fluids.'),
                    Text ('    2)  Eat Salty Foods.'),
                    Text ('    3)  Drink Caffeine.'),
                    Text ('    4)  Boost Your B12 Intake.'),
                    Text ('    5)  Fill Up On Folate'),
                    Text ('    6)  Cut Back On Carbs'),
                    Text ('    7)  Reduce Meal Size'),
                    Text ('    8)  Easy On The Alcohol.'),



                  ],
                ),
              ),
            ),



            SizedBox (height :20),

          ],
        ),
      ),
    );
  }
}
