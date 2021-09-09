import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {
  int result;
  bool isMale;
  int age;
  bmi_result(this.isMale,this.result,this.age);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("BMI Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Gender: ${isMale?'Male':'Female'}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("Age: $age",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("Result: $result",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
