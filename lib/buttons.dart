import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.changeJokeIndex}) : super(key: key);

  final Function(String s) changeJokeIndex;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Container(
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex("prev");
            },
            child: Icon(
              Icons.arrow_left_rounded,
              size: 40,
            ),
          ),
          margin: EdgeInsets.all(5),
        ),
        Container(
          child: FloatingActionButton(
            onPressed: () {
              changeJokeIndex("next");
            },
            child: Icon(
              Icons.arrow_right_rounded,
              size: 40,
            ),
          ),
          margin: EdgeInsets.all(5),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
