import 'package:flutter/cupertino.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;

    Path path = Path();
    path.moveTo(width * 0.04, height * 0.58);

    path.lineTo(width * 0.04, height * 0.13);
    path.quadraticBezierTo(
        width * 0.041, height * 0.05, width * 0.15, height * 0.05);
    path.lineTo(width * 0.84, height * 0.05);
    path.quadraticBezierTo(
        width * 0.958, height * 0.0445, width * 0.95, height * 0.12);
    path.lineTo(width * 0.95, height * 0.80);

    path.quadraticBezierTo(
        width * 0.96, height * 0.87, width * 0.86, height * 0.85);
    path.lineTo(width * 0.13, height * 0.63);

    path.quadraticBezierTo(
        width * 0.05, height * 0.61, width * 0.04, height * 0.58);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class Cliperhalf extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();

    // path.moveTo(0, height * 0.3);
    // path.lineTo(width, height * 0.8);
    // path.lineTo(width, height);

    // path.lineTo(0, height);
    // path.lineTo(0, height * 0.3);
    // path.moveTo(0, height * 0.76);
    // path.lineTo(0, height * 0.2);
    // path.lineTo(width * 0.2, 0);
    // path.lineTo(width, height * 0.8);
    // path.lineTo(width * 0.8, height);
    // path.lineTo(width * 0.2, height);
    // path.lineTo(0, height * 0.76);
    // path.moveTo(width * 0.04, height * 0.2);
    // path.lineTo(width * 0.2, 0);
    // path.quadraticBezierTo(width * 0.04, height * 0.05, width * 0.15, 0);
    // path.lineTo(width, height * 0.85);
    // path.lineTo(width * 0.85, height);
    // path.lineTo(width * 0.15, height);
    // path.lineTo(width * 0.04, height * 0.87);
    // path.lineTo(width * 0.04, height * 0.2);

    path.moveTo(width * 0.04, height * 0.6);

    path.lineTo(width * 0.04, height * 0.2);

    path.quadraticBezierTo(
        width * 0.047, height * 0.04, width * 0.13, height * 0.08);

    path.lineTo(width * 0.95, height * 0.55);

    path.quadraticBezierTo(
        width * 0.97, height * 0.86, width * 0.86, height * 0.85);
    path.lineTo(width * 0.13, height * 0.83);

    path.quadraticBezierTo(
        width * 0.05, height * 0.83, width * 0.04, height * 0.73);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
