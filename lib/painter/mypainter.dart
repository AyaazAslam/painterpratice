import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Praticepainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;

    var paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 20.0;
    // ..color=Colors.yellow
    var paint1 = Paint()
      ..color = Colors.pink
      ..strokeWidth = 20.0;

    var paint3 = Paint()
      ..color = Colors.red
      ..strokeWidth = 20.0;

    Path path = Path();
    path.moveTo(width * 0.01, height * 0.2);
    path.quadraticBezierTo(
        width * 0.1, height * 0.002, width * 0.4, height * 0.044);
    path.quadraticBezierTo(width * 0.2, 0, width * 0.987, height * 0.2);

    path.lineTo(width, height);
    path.lineTo(0, height);

    path.close();
    canvas.drawPath(path, paint);

    Path path1 = Path();
    path1.moveTo(0, height * 0.4);

    path1.lineTo(width, height * 0.003);
    path1.lineTo(width, height);
    path1.lineTo(0, height);

    path1.close();
    canvas.drawPath(path1, paint1);

    Path path3 = Path();
    path3.moveTo(width * 0.5, height * 0.5);
    path3.lineTo(width, height * 0.5);
    path3.lineTo(width, height);
    path3.lineTo(width * 0.5, height);
    path3.close();
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
