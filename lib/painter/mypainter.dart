import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 20.0;
    var paint1 = Paint()
      ..color = Colors.red
      ..strokeWidth = 20.0;

    Path path = Path();
    // path.moveTo(x, y);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
