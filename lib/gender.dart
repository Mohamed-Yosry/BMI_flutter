import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  String gender;
  var genderIcon;
  var color;
  Gender(this.gender, this.genderIcon,this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon,
            size: 70,
            color: Colors.white,
          ),
          Text(
            gender,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
