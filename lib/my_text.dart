import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 28,
      ),
    );
  }
}
