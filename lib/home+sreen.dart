import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'clipers/mycliper.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var height, width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.indigo,
            height: height,
            width: width,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 68.0),
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                color: Colors.white,
                height: height * 0.75,
                width: width,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
         
          SizedBox(
            height: 20,
          ),
        
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: ischeck,
                    onChanged: (value) {
                      setState(() {
                        ischeck = value;
                      });
                    },
                  ),
                  Text('Remember me'),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            elevation: 0,
            minWidth: width,
            height: 50,
            onPressed: () {},
            color: Colors.indigo,
            child: Text('Login'),
            textColor: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(
                onPressed: () {},
                child: Text('Sign up'),
              ),
            ],
          ),
        ],  
      ),
    );
  }
}

class TextFieldWidget {
}