import 'dart:math';

import 'package:flutter/material.dart';
import 'package:udemy_flutter_section4/bmi_result.dart';
import 'package:udemy_flutter_section4/gender.dart';
import 'package:udemy_flutter_section4/height_age.dart';

class bmi_screen extends StatefulWidget {
  @override
  _bmi_screenState createState() => _bmi_screenState();
}

class _bmi_screenState extends State<bmi_screen> {
  double slideValue=180.0;
  int weightValue=70;
  int ageValue=20;
  bool isMale=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  Expanded(
                    child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Gender(
                            "Male",
                            Icons.male,
                          isMale?Colors.grey:Colors.grey[900]
                        ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Gender(
                          "Female",
                          Icons.female,
                          isMale?Colors.grey[900]:Colors.grey
                      ),
                  )
                  )
                ]),
              ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.grey[900]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 35
                      ),

                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline:TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${slideValue.round()}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25
                          ),

                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 10
                          ),

                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      value:slideValue ,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        setState(() {
                          slideValue=value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(

                    children: [
                      Expanded(
                          child:height_age(
                            tagPlus: 'weight+',
                            tagMinus: 'weight-',
                            title: "Weight",
                            value: weightValue,
                            incremeant: (){
                              setState(() {
                                weightValue++;
                              });
                            },
                            decremeant: (){
                              setState(() {
                                weightValue--;
                              });
                            },
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child:height_age(
                          tagPlus: 'age+',
                          tagMinus: 'age-',
                          title: "Age",
                          value: ageValue,
                          incremeant: (){
                            setState(() {
                              ageValue++;
                            });
                          },
                          decremeant: (){
                            setState(() {
                              ageValue--;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  )
            ),
            Container(
                width: double.infinity,
                color: Colors.grey[900],
                child: MaterialButton(
                  onPressed: () {
                    double result = weightValue / pow(slideValue / 100, 2);
                    //int r=result.round();
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> bmi_result(isMale,result.round(),ageValue)));
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
