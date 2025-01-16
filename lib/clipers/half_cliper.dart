import 'package:flutter/cupertino.dart';

class HalfCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();

    path.moveTo(0, height * 0.09);

    path.quadraticBezierTo(
        width * 0.30, height * 0.29, width * 0.67, height * 0.16);

    path.quadraticBezierTo(
        width * 0.95, height * 0.046, width * 0.918, height * 0.28);

    path.quadraticBezierTo(
        width * 0.89, height * 0.53, width * 0.58, height * 0.564);
    path.quadraticBezierTo(
        width * 0.32, height * 0.599, width * 0.51, height * 0.689);

    path.quadraticBezierTo(
        width * 0.85, height * 0.855, width * 0.782, height * 0.823);
    path.quadraticBezierTo(width * 0.99, height * 0.927, width * 0.91, height);

    path.lineTo(0, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
