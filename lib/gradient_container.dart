// import 'package:dice_app/my_text.dart';
import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.gradientColor, {super.key});
  List<Color> gradientColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColor,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child:  DiceRoller()
      ),
    );
  }
}
