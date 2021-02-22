import 'package:flutter/material.dart';

class TextWithLabel extends StatelessWidget {
  final String label;
  final String text;
  final TextStyle textStyle;
  TextWithLabel(
      this.text,
      {
        this.label,
        this.textStyle = const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24
        )
      });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(this.label),
        Text(this.text, style: this.textStyle,)
      ],
    );
  }
}
