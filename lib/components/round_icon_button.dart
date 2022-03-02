import 'package:flutter/material.dart';
//use stless to create a stateless widget
class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;//creating first order f-n
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
      ),
      onPressed: onPressed,//sharing that f-n here, actually we can name it any, not only onPressed, but we could name smth like: aqwncqw
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
