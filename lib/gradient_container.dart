import 'package:flutter/material.dart';
//import 'package:learn_flutter/styled_text.dart';
import 'package:learn_flutter/dice_roller.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //const GradientContainer({super.key});
  GradientContainer(this.color1, this.color2, {super.key});

   GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    startAlignment = Alignment.center;
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [Colors.deepPurple, Colors.cyan, Colors.pink],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child:const Center(
            child:  DiceRoller()));
  }
}
