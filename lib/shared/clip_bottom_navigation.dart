import 'package:ecommerce_app/constants/theme.dart';
import 'package:flutter/material.dart';

class BottomNavigationPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(size.width*0.5000000,size.height*0.4464286);
    path.cubicTo(size.width*0.5465797,size.height*0.4464286,size.width*0.5870000,size.height*0.3489580,size.width*0.6071473,size.height*0.2061866);
    path.cubicTo(size.width*0.6219565,size.height*0.1012580,size.width*0.6467271,0,size.width*0.6787440,0);
    path.lineTo(size.width*0.9420290,0);
    path.cubicTo(size.width*0.9740459,0,size.width,size.height*0.09593929,size.width,size.height*0.2142857);
    path.lineTo(size.width,size.height*0.7857143);
    path.cubicTo(size.width,size.height*0.9040625,size.width*0.9740459,size.height,size.width*0.9420290,size.height);
    path.lineTo(size.width*0.05797101,size.height);
    path.cubicTo(size.width*0.02595459,size.height,0,size.height*0.9040625,0,size.height*0.7857143);
    path.lineTo(0,size.height*0.2142857);
    path.cubicTo(0,size.height*0.09593929,size.width*0.02595459,0,size.width*0.05797101,0);
    path.lineTo(size.width*0.3212560,0);
    path.cubicTo(size.width*0.3532729,0,size.width*0.3780435,size.height*0.1012580,size.width*0.3928527,size.height*0.2061866);
    path.cubicTo(size.width*0.4130000,size.height*0.3489580,size.width*0.4534203,size.height*0.4464286,size.width*0.5000000,size.height*0.4464286);
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = ThemeApp.cWhite.withOpacity(1.0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
