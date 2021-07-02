import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display(this.text,{Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(text),
    );
  }
}
