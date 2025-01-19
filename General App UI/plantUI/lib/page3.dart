import 'package:assignment_33/page2.dart';
import 'package:assignment_33/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  State createState() => _page3();
}

class _page3 extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(123, 123, 123, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const page2()));*/
                    },
                    child: Image.asset("lib/Vector (Stroke).png")),
                Spacer(),
                Transform.rotate(
                    angle: -180, child: Image.asset("lib/Group 5314.png")),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Verification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 46,
              width: 272,
              child: const Text(
                "Enter the OTP code from the phone we just sent you.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.6)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                /* Container(
                  height: 56,
                  width: 56,
                  padding: const EdgeInsets.only(top: 247, left: 20),
                  child: TextFormField(
                    style: const TextStyle(
                        color: Color.fromRGBO(204, 211, 196, 1)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(204, 211, 196, 1), width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(204, 211, 196, 1),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),*/
                Container(
                    height: 56,
                    width: 56,
                    //padding: const EdgeInsets.only(top: 247, ),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(204, 211, 196, 1)),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 20,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.06))
                        ])),
                SizedBox(
                  width: 35,
                ),
                Container(
                    height: 56,
                    width: 56,
                    //padding: const EdgeInsets.only(top: 247, left: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(204, 211, 196, 1)),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 20,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.06))
                        ])),
                SizedBox(
                  width: 35,
                ),
                Container(
                    height: 56,
                    width: 56,
                    //padding: const EdgeInsets.only(top: 247, left: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(204, 211, 196, 1)),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 20,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.06))
                        ])),
                SizedBox(
                  width: 35,
                ),
                Container(
                    height: 56,
                    width: 56,
                    //padding: const EdgeInsets.only(top: 247, left: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(204, 211, 196, 1)),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 20,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.06))
                        ])),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 46,
              width: 272,
              child: const Text(
                "Don’t receive OTP code! Resend",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.6)),
              ),
            ),
            Container(
                height: 50,
                width: 320,
                //padding: const EdgeInsets.fromLTRB(15, 93, 15, 92),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(0, 20),
                          blurRadius: 40,
                          spreadRadius: 0)
                    ],
                    color: Color.fromRGBO(124, 180, 70, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(124, 180, 70, 1))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const page4()),
                      );
                    },
                    child: const Text(
                      " Submit",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ))),
            Spacer(),
            /*Container(
              height: 44,
              width: 700,
              color: const Color.fromRGBO(123, 123, 123, 1),
            )*/
          ],
        ),
      ),
    );
  }
}
