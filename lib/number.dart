import 'package:flutter/material.dart';
import 'constants.dart';

class number extends StatelessWidget {
  number({this.num, this.onTap});
  final String num;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            num.toString(),
            style: kTextStyleMain,
          ),
        ),
      ),
    );
  }
}
