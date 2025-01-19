import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:passenger_ui/screens/sowhilepattern.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    log("In Built");
    navigate(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Rectangle 3.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 25.h,
              child: Image.asset(
                "assets/Media (8) 1.png",
                width: 60.w,
                height: 60.w,
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }

  void navigate(BuildContext context) {
    log("Navigate Screen");

    Future.delayed(const Duration(seconds: 2), () async {
      log("Navigate to Home");
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return Sowhilepattern();
      }));
    });
  }
}
