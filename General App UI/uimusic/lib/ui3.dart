import 'package:assignment_45uimusic/navigartorbar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class Alone extends StatefulWidget {
  const Alone({super.key});

  @override
  State createState() => _Alone();
}

class _Alone extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: const MyNavigator(),
        body: Column(
          children: [
            Stack(
              //fit: StackFit.expand,
              children: [
                Positioned(
                    //top: -13,
                    child: Image.asset("assets/images/alones.png")),
                Positioned(
                  top: 470,
                  left: 95,
                  child: Text(
                    "Alone in the Abyss",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(230, 154, 21, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  top: 500,
                  left: 165,
                  child: Text(
                    "Youlakou",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Positioned(
                  top: 510,
                  right: 20,
                  child: Icon(
                    Icons.ios_share,
                    color: Color.fromRGBO(230, 154, 21, 1),
                    size: 21,
                  ),
                )
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text(
                    "Dynamic Warmup |",
                    style: TextStyle(
                        fontFamily: 'SegoeUI',
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 15,
                  ),
                  child: Text(
                    "4 min",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            LinearPercentIndicator(
              width: 384.0,
              lineHeight: 6.0,
              percent: 0.3,
              backgroundColor: const Color.fromRGBO(217, 217, 217, 0.19),
              barRadius: const Radius.circular(15),
              progressColor: const Color.fromRGBO(230, 154, 21, 1),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.repeat_one,
                  size: 20,
                  color: Colors.white,
                ),
                Icon(
                  Icons.skip_previous,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  Icons.play_circle,
                  size: 50,
                  color: Colors.white,
                ),
                Icon(
                  Icons.skip_next,
                  size: 25,
                  color: Colors.white,
                ),
                Icon(
                  Icons.volume_up,
                  size: 24,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ));
  }
}
