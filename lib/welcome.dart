import 'package:ecommerceapp/login.dart';
import 'package:ecommerceapp/signup.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 90),
                  child: Text(
                    "Welcome To Our Market",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff4cad54),
                        fontFamily: "myfont"),
                  ),
                ),
              ),
              Center(
                  child: Image.asset(
                'images/photo.png',
                width: 200,
                height: 300,
              )),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(10))),
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Login();
                  }));
                },
                height: 48,
                minWidth: 270,
                child: Text(
                  "login",
                  style: TextStyle(fontSize: 22, color: Color(0xffffffff)),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(const Radius.circular(10))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Signup();
                  }));
                },
                color: Colors.green,
                height: 48,
                minWidth: 270,
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 22, color: Color(0xfffefefe)),
                ),
              ),
              SizedBox(
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
