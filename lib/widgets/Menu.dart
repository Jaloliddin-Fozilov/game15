import 'package:flutter/material.dart';
import 'Time.dart';
import 'ResetButton.dart';
import 'Move.dart';

class Menu extends StatelessWidget {
  Function reset;
  int move;
  int secondsPassed;
  var size;

  Menu(this.reset, this.move, this.secondsPassed, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(
            "assets/images/menu.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ResetButton(reset, "Reset"),
          Move(move),
          Time(secondsPassed),
        ],
      ),
    );
  }
}
