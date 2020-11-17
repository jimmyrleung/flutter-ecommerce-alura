import 'package:flutter/material.dart';

class DetailsText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  DetailsText({this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 12, ),
      child: _applyTextStyle(text),
    );
  }

  _applyTextStyle(text) {
    if(textStyle != null) {
      return Text(text, style: textStyle);
    }

    return Text(text);
  }
}