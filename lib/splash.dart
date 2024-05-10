import 'package:ecommerceapp/welcome.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Welcome();
          }));
        },
        child: Container(
          child: Center(
            child: Image.asset(
              'images/photo.png',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
