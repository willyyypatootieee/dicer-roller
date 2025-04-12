import 'package:flutter/material.dart';
import 'dart:math';



final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  // This method is called when the button is pressed to roll the dice.
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
      // Update the image based on the dice roll.
    });
    // Here you can add logic to change the image based on the dice roll.
  }

  var activeDiceImage = 'assets/images/dice-1.png';

  @override
  Widget build(context) {
    // Renamed from Build to build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 40),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.black26,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 14),
          ),
          child: Text('Roll the Dice!'),
        )
      ],
    );
  }
}
