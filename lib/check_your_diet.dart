import 'package:flutter/material.dart';

class DietCheck extends StatefulWidget {
  @override
  _DietCheckState createState() => _DietCheckState();
}

class _DietCheckState extends State<DietCheck> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Scaffold(
        appBar : AppBar(
          elevation : 0.5,
           title : Text ("Diet Suggestions",
           style :TextStyle(
             color : Colors.white,

           ),),
          backgroundColor: Colors.grey,
        ),
        body :SingleChildScrollView(
          child: Column(
            children:[
              SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height : 300,
                  width :double.infinity,
                  decoration : BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image :DecorationImage(
                      image : AssetImage('assets/bmi.jpeg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container (
                  decoration : BoxDecoration(
                    borderRadius:BorderRadius.circular(25.0 ),
                    color : Colors.amber,

                  ),
                  height : 380,
                 padding:EdgeInsets.all(20.0),
                  child : Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text ('UNDERWEIGHT',
                      style : TextStyle(

                        fontSize:30,
                        fontWeight:FontWeight.bold,
                      ),),
                      SizedBox(height : 10),
                      Text ('BMI Less than 18.5',
                        style : TextStyle(
                          color :Colors.grey,
                          fontSize:15,
                          fontWeight:FontWeight.bold,
                        ),),


                      SizedBox(height : 20),
                      Text('CAUSES',
                      style : TextStyle(
                        fontSize :20,
                        fontWeight:FontWeight.bold,
                      ),),
                      SizedBox(height : 10),
                      Text ('    1)  Family History'),
                      Text ('    2)  A High Metabolism'),
                      Text ('    3)  Frequent Physical Activity'),
                      Text ('    4)  Physical illness or chronic disease'),
                      Text ('    5)  Mental Illness'),
                      SizedBox(height : 15),
                      Text('DIET PRACTICE TO FOLLOW',
                      style : TextStyle(
                        fontSize :20,
                        fontWeight:FontWeight.bold,
                      )),
                      SizedBox(height : 5),
                      Text('Eat five to six smaller meals during the day rather than two or three large meals. Choose nutrient-rich foods. As part of an overall healthy diet, choose whole-grain breads, pastas and cereals, fruits and vegetables, dairy products, lean protein sources and nuts and seeds. Try smoothies and shakes.'),







                    ],
                  ),
                ),
              ),
              SizedBox(height : 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container (
                  decoration : BoxDecoration(
                    borderRadius:BorderRadius.circular(25.0 ),
                    color : Colors.green,

                  ),
                  height : 300,
                  padding:EdgeInsets.all(20.0),
                  child : Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text ('NORMAL',
                        style : TextStyle(

                          fontSize:30,
                          fontWeight:FontWeight.bold,
                        ),),
                      SizedBox(height : 10),
                      Text ('BMI Between 18.5 To 24.9',
                        style : TextStyle(
                          color :Colors.blueGrey,
                          fontSize:15,
                          fontWeight:FontWeight.bold,
                        ),),


                      SizedBox(height : 40),

                      Text('DIET PRACTICES',
                          style : TextStyle(
                            fontSize :20,
                            fontWeight:FontWeight.bold,
                          )),
                      SizedBox(height : 10),
                      Text('A balanced and nutritious diet goes a long way in helping you achieve a healthy body weight (thus, a normal BMI). Include more veggies and whole foods in your diet. And, let go of oily, fatty, and junk food'),







                    ],
                  ),
                ),
              ),
              SizedBox(height : 20),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container (
                  decoration : BoxDecoration(
                    borderRadius:BorderRadius.circular(25.0 ),
                    color : Colors.deepOrangeAccent,

                  ),
                  height : 380,
                  padding:EdgeInsets.all(20.0),
                  child : Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text ('OVERWEIGHT',
                        style : TextStyle(

                          fontSize:30,
                          fontWeight:FontWeight.bold,
                        ),),
                      SizedBox(height : 10),
                      Text ('BMI Between 25.0 To 29.9',
                        style : TextStyle(
                          color :Colors.grey,
                          fontSize:15,
                          fontWeight:FontWeight.bold,
                        ),),


                      SizedBox(height : 20),
                      Text('CAUSES',
                        style : TextStyle(
                          fontSize :20,
                          fontWeight:FontWeight.bold,
                        ),),
                      SizedBox(height : 10),
                      Text ('    1)  Food and Activity'),
                      Text ('    2)  Environment'),
                      Text ('    3)  Health Conditions and Medications'),
                      Text ('    4)  Stress, Emotional Factors, and Poor Sleep.'),
                      Text ('    5)  Genetics'),
                      SizedBox(height : 15),
                      Text('DIET PRACTICE TO FOLLOW',
                          style : TextStyle(
                            fontSize :20,
                            fontWeight:FontWeight.bold,
                          )),
                      SizedBox(height : 5),
                      Text('Consume less “bad” fat and more “good” fat.Consume less processed and sugary foods.Eat more servings of vegetables and fruits.Eat plenty of dietary fiber.Focus on eating low–glycemic index foods.Engage in regular aerobic activity.'),







                    ],
                  ),
                ),
              ),
              SizedBox(height : 20),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container (
                  decoration : BoxDecoration(
                    borderRadius:BorderRadius.circular(25.0 ),
                    color : Colors.red[900],

                  ),
                  height : 380,
                  padding:EdgeInsets.all(20.0),
                  child : Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text ('OBESITY',
                        style : TextStyle(

                          fontSize:30,
                          fontWeight:FontWeight.bold,
                        ),),
                      SizedBox(height : 10),
                      Text ('BMI Greater than 30',
                        style : TextStyle(
                          color :Colors.grey,
                          fontSize:15,
                          fontWeight:FontWeight.bold,
                        ),),


                      SizedBox(height : 20),
                      Text('CAUSES',
                        style : TextStyle(
                          fontSize :20,
                          fontWeight:FontWeight.bold,
                        ),),
                      SizedBox(height : 10),
                      Text ('    1)  Eating too much and Moving too little'),
                      Text ('    2)  Consume high amounts of energy,But not burning energy'),
                      Text ('    3)  Lack of Physical Activity'),
                      Text ('    4)  Psychological factors.'),
                      Text ('    5)  Medications'),
                      SizedBox(height : 15),
                      Text('DIET PRACTICE TO FOLLOW',
                          style : TextStyle(
                            fontSize :20,
                            fontWeight:FontWeight.bold,
                          )),
                      SizedBox(height : 5),
                      Text('Exercise regularly. You need to get 150 to 300 minutes of moderate-intensity activity a week to prevent weight gain.Follow a healthy-eating plan.Know and avoid the food traps that cause you to eat.Monitor your weight regularly.Be consistent.'),







                    ],
                  ),
                ),
              ),
              SizedBox(height : 20),



            ],
          ),
        ),
      ),
    );
  }
}
