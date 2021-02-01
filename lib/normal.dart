import 'package:flutter/material.dart';


class Normal extends StatefulWidget {
  @override
  _NormalState createState() => _NormalState();
}

class _NormalState extends State<Normal> {
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
                        'Hurray !!!!!',
                        style : TextStyle(
                          color : Colors.black,
                          fontSize : 25,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Center(
                      child: Text(

                        'You are now in a Good Health !!!',
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
                  image : AssetImage('assets/normal.jpg'),
                ),
              ),
            ),
            SizedBox(height : 20),

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

                  Text('DIET PRACTICES TO MAINTAIN ',
                    style : TextStyle(
                      fontSize :20,
                      fontWeight:FontWeight.bold,
                    ),),
                  SizedBox(height : 10),
                  Text ('    1)  Eat more fruits and vegetables and other high-fiber foods.'),
                  Text ('    2)  Choose foods that are low in saturated fat and trans fat.'),
                  Text ('    3)  Eat at least two servings of fish each week. Oily fish, which contain omega-3 fatty acids, are best.'),
                  Text ('    4)  Limit sodium, alcohol, and added sugar.'),
                  Text ('    5)  Fill Up On Folate'),
                  Text ('    6)  If your BP level is nearing 90 or above 135 ,please strictly follow this diet as there is a slight chance of getting into diabetes or low blood pressure '),





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
