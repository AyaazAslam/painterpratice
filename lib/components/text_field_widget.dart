import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormWfield extends StatelessWidget {
  final String inputText;
  
  TextFormWfield({super.key, required this.inputText, });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60,
      // width: 300,
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.green[50],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none),
            label: Text(
              inputText,
              style: TextStyle(color: Colors.black),
            ),
           ),
      ),
    );
  }
}
