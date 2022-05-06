import 'package:flutter/material.dart';

class TextType extends StatelessWidget {
  final String text;
  final double size;
  const TextType(this.text,this.size,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: Colors.white,
      ),
    );
  }
}
