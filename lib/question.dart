import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
    );
  }
}
