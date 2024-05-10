// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:ecommerceapp/login.dart';
import 'package:ecommerceapp/password.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Login();
          }));
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Color(0xffc8e7be),
      ),
      body: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 110),
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xd87e7e7d),
                              fontFamily: "myfont",
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffc8e7be),
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Color(0xcd000000),
                            ),
                            labelText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffc8e7be),
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Color(0xff7eb76b),
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Color(0xff000000),
                              size: 19,
                            ),
                            labelText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Home();
                        }));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff307a17)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 85, vertical: 18)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "Sign up",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xfffefefe)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'already have an account?',
                          style:
                              TextStyle(fontSize: 17, color: Color(0xff656865)),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to the desired page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            'login',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xff409555),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  left: 66,
                  top: 50,
                  child: Text(
                    "    SIGN UP   ",
                    style: TextStyle(
                        fontSize: 35,
                        color: Color(0xff307a17),
                        fontFamily: "myfont",
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 320,
                  child: TextButton(
                    onPressed: () {
                      // Navigate to the desired page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Password()),
                      );
                    },
                    child: Text(
                      "  Forgot password? ",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff797775),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
