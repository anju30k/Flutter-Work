import 'dart:developer';
//import 'package:assignment_45firestore/UI/profilepic.dart';
import 'package:assignment_45firestore/UI/studentui.dart';
import 'package:assignment_45firestore/firebase_authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  void navigate(BuildContext context) {
    log("Navigate Screen");

    Future.delayed(const Duration(seconds: 3), () async {
      
      await SessionData.getSessionData();

      log("IS LOGIN :${SessionData.isLogin}");

      if (SessionData.isLogin!) {
        log("Navigate to Home");
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return FirebaseDemoBasic(email: SessionData.emailId!);
          //return Firebasedemo_withprofile(email: SessionData.emailId!);
        }));
      } else {
        log("Navigate to Login");
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    log("In Built");
    navigate(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZbRPanyuWdmIpQxFYKFbxoDr2SG1j4mFa2A&s"),
        ),
      ),
    );
  }
}

class SessionData {
  static bool? isLogin;
  static String? emailId;

  static Future<void> storeSessionData(
      {required bool loginData, required String emailId}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    //set data
    sharedPreferences.setBool(("loginSession"), loginData);
    sharedPreferences.setString("email", emailId);

    //get data
    await getSessionData();
  }

  static Future<void> getSessionData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    //if null then use ?? (null check operator)
    //if null->false else true/false
    isLogin = sharedPreferences.getBool("loginSession") ?? false;
    emailId = sharedPreferences.getString("email") ?? "";
  }
}
