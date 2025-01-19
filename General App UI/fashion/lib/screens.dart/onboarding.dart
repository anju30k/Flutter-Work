import 'package:assignment48fashion/screens.dart/explore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "assets/images/img5.png",
          width: 390,
        ),
        const SizedBox(height: 20),
        Text("Find The\nBest Collections",
            style: GoogleFonts.imprima(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 42))),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
              "Get your dream item easily with FashionHub\nand get other intersting offer",
              style: GoogleFonts.imprima(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(121, 119, 128, 1),
                      fontSize: 15))),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 20),
          child: Row(
            children: [
              SizedBox(
                  height: 62,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.imprima(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(13, 13, 14, 1),
                                fontSize: 18)),
                      ))),
              const Spacer(),
              SizedBox(
                  height: 62,
                  width: 150,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              Color.fromRGBO(255, 122, 0, 1))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore()));
                      },
                      child: Text("Sign In",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 18))))),
            ],
          ),
        )
      ],
    ));
  }
}
