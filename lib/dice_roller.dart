import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}


//DICE ROLLER STATE
final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 1;
  void rollDice() {
    //Roll dice function
    var randomNum = randomizer.nextInt(6) + 1;
    setState(() {
      currentDiceRoll = randomNum;
    });

    
    print('');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 30)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
