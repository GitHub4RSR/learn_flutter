import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.someText, {super.key});

  final String someText;

  @override
  Widget build(BuildContext context) {
    return Text(
      someText,
      style: const TextStyle(
        color: Colors.red,
        fontSize: 50,
      ),
    );
  }
}
