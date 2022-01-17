import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.chooseGender, });
  final Color colour;
  final Widget cardChild;
  final Function chooseGender;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: chooseGender,
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