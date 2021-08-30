import 'package:flutter/material.dart';

class IconGlobalButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final double size;
  final Color? color;
  IconGlobalButton({Key? key, required this.icon, this.onTap, this.size = 24.0, this.color}) : super(key: key);

  @override
  _IconGlobalButtonState createState() => _IconGlobalButtonState();
}

class _IconGlobalButtonState extends State<IconGlobalButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
       child: Container(
         child: Icon(widget.icon, size: widget.size, color: widget.color,),
       ),
    );
  }
}