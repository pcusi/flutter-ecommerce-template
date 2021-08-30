import 'package:flutter/material.dart';

class BrandWidget extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  final Color textColor;

  const BrandWidget({
    Key? key,
    required this.name,
    required this.onTap,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Text(
        this.name,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.normal,
          fontSize: 16.0,
          fontFamily: 'Lato',
        ),
      ),
    );
  }
}
