import 'package:flutter/material.dart';

class DetailsText extends StatelessWidget {
  final String text;

  DetailsText({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 12, ),
      child: Text(text),
    );
  }
}