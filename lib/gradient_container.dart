import 'package:flutter/material.dart';
import 'package:learn_flutter/styled_text.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget
{

  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    startAlignment = Alignment.center;
    return Container(
          decoration: BoxDecoration(
              gradient:  LinearGradient(
            colors: const  [Colors.deepPurple, Colors.cyan, Colors.pink],
            begin: startAlignment,
            end: endAlignment,
          ),
          ),
          child: const Center(
            child: StyledText('Shree Guru Charan Saroj Raj.')),
          
        );
  }
}