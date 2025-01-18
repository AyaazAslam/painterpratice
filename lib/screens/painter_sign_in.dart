import 'package:cliperpratice/painter/mypainter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(color: Colors.indigo),
                child: CustomPaint(
                  painter: Praticepainter(),
                ),
              ))
        ],
      ),
    );
  }
}
