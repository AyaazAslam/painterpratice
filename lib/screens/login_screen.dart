import 'package:cliperpratice/components/socail_page.dart';
import 'package:cliperpratice/components/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../clipers/half_cliper.dart';

class LoginPageUI extends StatelessWidget {
  LoginPageUI({super.key});
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(color: Colors.indigo),
            child: ClipPath(
              clipper: HalfCliper(),
              child: Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 190,
                    ),
                    SizedBox(
                        height: 50,
                        // width: 00,

                        child: SizedBox(
                            width: 350,
                            child: TextFormWfield(
                                inputText: "Email or Password"))),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 50,
                        width: 350,
                        child: TextFormWfield(inputText: " Password")),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: [Text("Forgot Password")],
                      ),
                    ),
                    SizedBox(
                      height: 260,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200.0),
                      child: Row(
                        children: [
                          Text(
                            "OR",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 140.0),
                        child: Row(
                          children: [
                            Text(
                              "Login with Socail Media",
                              style: TextStyle(),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocailIconScreen(
                            height: 50,
                            width: 50,
                            color: Colors.black,
                            ImageUrl: "assets/images/apple.jpg"),
                        SocailIconScreen(
                            height: 50,
                            width: 50,
                            color: Colors.black,
                            ImageUrl: "assets/images/gds.jpg"),
                        SocailIconScreen(
                            height: 50,
                            width: 50,
                            color: Colors.black,
                            ImageUrl: "assets/images/face.jpg"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 118.0),
                          child: Text("Already have an Acount?"),
                        ),
                        Text(
                          "SignUp",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 20,
              left: 150,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              right: 170,
              top: 478,
              child: Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 54,
              ))
        ],
      ),
    );
  }
}
