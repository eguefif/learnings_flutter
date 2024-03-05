import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-1.png';
  }

  @override
  Widget build(context) {
    return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Image.asset(
                      'assets/images/dice-2.png',
                      width: 200),
                    TextButton(
                      onPressed: rollDice, 
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(30),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 28,
                        )),
                      child: const Text("Roll dice"))
                    ],
        );
  }
}