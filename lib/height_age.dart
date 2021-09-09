import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget height_age({
  double radius=10,
  required String title,
  required int value,
  required VoidCallback incremeant,
  required VoidCallback decremeant,
  required var tagPlus,
  required var tagMinus,
}){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadiusDirectional.circular(radius),
      color: Colors.grey[900]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        SizedBox(height: 10,),
        Text(
          '$value',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: tagMinus,
              backgroundColor: Colors.grey,
              onPressed: decremeant,
              child: Icon(
                Icons.remove,
              ),
            ),
            SizedBox(width: 15,),
            FloatingActionButton(
              heroTag: tagPlus,
              backgroundColor: Colors.grey,
                onPressed: incremeant,
              child: Icon(
                Icons.add,
              ),
            ),
          ],
        )
      ],
    ),
  );
}