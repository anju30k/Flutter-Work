import 'package:assignment_46homerentalapp/ui2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeRetalApp extends StatefulWidget {
  const HomeRetalApp({super.key});

  @override
  State createState() => _HomeRetalApp();
}

class _HomeRetalApp extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset("assets/images/House1.png"),
        const Spacer(),
        Text(
          "Lets find your Paradise",
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        const Spacer(),
        Text(
          "Find your perfect dream space \n with just a few clicks",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(101, 101, 101, 1)),
          ),
        ),
        const Spacer(),
        ElevatedButton(
            style: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Color.fromRGBO(32, 169, 247, 1))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: Text("Get Started",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ))
                ),
        const Spacer(),
      ],
    ));
  }
}
