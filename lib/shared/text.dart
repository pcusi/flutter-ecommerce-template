import 'package:flutter/material.dart';

class TextGlobal extends StatelessWidget {
  final String value;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final int? maxLines;
  const TextGlobal({
    Key? key,
    required this.value,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.maxLines
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.value,
      maxLines: this.maxLines,
      style: TextStyle(
        color: this.color,
        fontWeight: this.fontWeight,
        fontSize: this.fontSize,
        fontFamily: 'Lato',
      ),
    );
  }
}
