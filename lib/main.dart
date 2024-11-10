import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

 const List<Color> gradientColor =  [
  Color.fromARGB(255, 134, 125, 167),
  Color.fromARGB(255, 137, 207, 184)
];
void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(gradientColor),
      ),
    ),
  );
}