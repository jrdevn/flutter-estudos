import 'package:flutter/material.dart';
import '../components/display.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: <Widget>[
        Display('Bar'), 
        Text('Footer')],
    ));
  }
}
