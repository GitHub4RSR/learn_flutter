import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){

    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{
  //var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;

  rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context){
    return Column(
              mainAxisSize: MainAxisSize.min,
          children: [
            //child: StyledText('Shree Guru Charan Saroj Raj.')),
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20,)
            ,
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.yellow,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                child: const Text('Roll Dice')),
          ],
        );
  }
}