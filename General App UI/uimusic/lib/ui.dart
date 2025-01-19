import 'package:assignment_45uimusic/ui2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicUI extends StatefulWidget {
  const MusicUI({super.key});
  @override
  State createState() => _MusicUI();
}

class _MusicUI extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: -10,
              child: Image.asset("assets/images/bg.png", height: 648),
            ),
            Positioned(
              top: 420,
              right: 50,
              child: Text('''
                    Dancing between 
                    The shadows 
                    Of rhythm ''',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            Positioned(
              top: 588,
              left: 70,
              child: Container(
                height: 45,
                width: 261,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gallery()));
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red)),
                  child: Text("Get started",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ),
            ),
            Positioned(
              top: 647,
              left: 70,
              child: Container(
                height: 45,
                width: 261,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.red)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black)),
                  child: Text(
                    "Continue with Email",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 46, 0, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 712,
              left: 90,
              child: Opacity(
                opacity: 0.43,
                child: Center(
                  child: Text(
                    "by continuing you agree to terms \n of services and  Privacy policy",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(203, 200, 200, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
