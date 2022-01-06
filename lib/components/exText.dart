import 'package:flutter/material.dart';

class ExText extends StatelessWidget {
  const ExText({
    Key? key,
    this.text = '123',
    this.fontSize = 24,
    this.textColor = 0xFFFFFFFF,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final int textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor != null ? Color(textColor) : null,
        ),
      ),
      alignment: const Alignment(1, 1),
    );
  }
}
