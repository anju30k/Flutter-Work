import 'dart:developer';
import 'package:assignment_45firestore/firebase_authentication/register.dart';
import 'package:assignment_45firestore/firebase_authentication/snackbar.dart';
//import 'package:assignment_45firestore/UI/profilepic.dart';
import 'package:assignment_45firestore/UI/studentui.dart';
import 'package:assignment_45firestore/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _emailTextEditingController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white, fontSize: 20),
              decoration: const InputDecoration(
                  labelText: "Enter Email",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _passwordTextEditingController,
              keyboardType: TextInputType.number,
              obscureText: _showPassword,
              style: const TextStyle(color: Colors.white, fontSize: 20),
              decoration: InputDecoration(
                labelText: "Enter Password",
                labelStyle: const TextStyle(color: Colors.white, fontSize: 20),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                suffixIcon: GestureDetector(
                  onTap: () {
                    _showPassword = !_showPassword;
                    setState(() {});
                  },
                  child: Icon(
                    (_showPassword) ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              if (_emailTextEditingController.text.trim().isNotEmpty &&
                  _passwordTextEditingController.text.trim().isNotEmpty) {
                try {
                  UserCredential userCredential =
                      await _firebaseAuth.signInWithEmailAndPassword(
                          email: _emailTextEditingController.text,
                          password: _passwordTextEditingController.text);
                  log("ANJU:UserCredentials:${userCredential.user!.email}");

                  //setting login  details (true)
                  await SessionData.storeSessionData(
                      loginData: true, emailId: userCredential.user!.email!);
                  
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return FirebaseDemoBasic(
                      email: userCredential.user!.email!,
                    );
                    // return Firebasedemo_withprofile(
                    //   email: userCredential.user!.email!,
                    // );
                  }));
                } on FirebaseAuthException catch (error) {
                  log("ANJU:Error:${error.code}");
                  log("ANJU:Error:${error.message}");
                  CustomSnackBar.showCustomSnackbar(
                      message: error.code, context: context);
                }
                CustomSnackBar.showCustomSnackbar(
                    message: "Login Successfully", context: context);
              } else {
                CustomSnackBar.showCustomSnackbar(
                    message: "Enter Valid Details", context: context);
              }
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const RegisterScreen();
              }));
            },
            child: const Text(
              "Create new Account? Register",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
