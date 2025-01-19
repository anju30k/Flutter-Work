import 'dart:developer';
import 'package:assignment_45firestore/firebase_authentication/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            "Register",
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
                      await _firebaseAuth.createUserWithEmailAndPassword(
                          email: _emailTextEditingController.text,
                          password: _passwordTextEditingController.text);
                  log("ANJU:UserCredentials:$userCredential");

                  CustomSnackBar.showCustomSnackbar(
                      message: "User Register Successfully", context: context);

                  Navigator.of(context).pop();
                } on FirebaseAuthException catch (error) {
                  log("ANJU:Error:${error.code}");
                  log("ANJU:Error:${error.message}");

                  CustomSnackBar.showCustomSnackbar(
                      message: error.message!, context: context);
                }
              } else {
                CustomSnackBar.showCustomSnackbar(
                    message: "Please enter valid fields", context: context);
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
                  "Register User",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
