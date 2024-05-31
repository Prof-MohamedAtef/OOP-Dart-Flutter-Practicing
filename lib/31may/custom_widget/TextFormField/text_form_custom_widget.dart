import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormCustomWidget extends StatelessWidget {
  String text;
  String? textColor;
  TextInputType textInputType;
  TextStyle? style;
  TextAlign? textAlign = TextAlign.start;

  TextFormCustomWidget({super.key,
    required this.text,
    this.textColor,
    required this.textInputType,
    this.style,
    this.textAlign});

  @override
  Widget build(BuildContext context) {
    return TextFormField(key: key, initialValue: text, style: style, keyboardType: textInputType);
  }
}