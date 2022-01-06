import 'package:calculator_app/constants.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    this.text = "Button",
    this.fillColor = kButtonBack,
    this.textColor = 0xFFFFFFFF,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final Function onPress;
  final int fillColor;
  final int textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: fillColor != null ? Color(fillColor) : null,
          onPressed: () {
            onPress(text);
          },
          child: Text(
            text,
            style: TextStyle(
              color: Color(textColor),
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
