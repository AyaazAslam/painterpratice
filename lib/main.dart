import 'package:cliperpratice/screens/login_screen.dart';
import 'package:cliperpratice/screens/painter_sign_in.dart';
import 'package:flutter/material.dart';

import 'clipers/mycliper.dart';
import 'components/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: GetStartedScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height, width;
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    TextFormWfield(
                      inputText: 'Email',
                      // icon: Icons.email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormWfield(
                      inputText: 'Password',
                      // icon: Icons.lock,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: ischeck,
                            onChanged: (bool? value) {
                              setState(() {
                                ischeck = value;
                              });
                            }),
                        Text('Forgot Password?'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 170, right: 5),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 450,
              child: ClipPath(
                clipper: Cliperhalf(),
                child: Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 58.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you have and account?",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.indigo),
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 23),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
              ))
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
