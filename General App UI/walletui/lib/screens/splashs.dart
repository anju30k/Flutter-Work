import 'package:assignment_50walletui/screens/logins.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 6, 133, 1),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
          },
          child: Image.asset("assets/images/Group 4.png")),
      ),
    );
  }
}
