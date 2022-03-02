import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.colour, this.cardChild, this.onPress});//sharing f-n

  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(//setting up f-n
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}

