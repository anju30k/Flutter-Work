import 'package:flutter/material.dart';
import 'package:assignment_33/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  State createState() => _page1();
}

class _page1 extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(123, 123, 123, 1),
      ),
      body: Center(
        child: Column(
          children: [
            /* Container(
              height: 32,
              width: 400,
              color: const Color.fromRGBO(123, 123, 123, 1),
            ),*/
            Image.asset("lib/image 2.png"),
            Container(
              height: 88,
              width: 247,
              child: const Text(
                "Enjoy your life with Plants",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 34.22,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
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
                    /*
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(124, 180, 70, 1),
                          Color.fromRGBO(62, 102, 24, 1)
                        ]),*/
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(124, 180, 70, 1))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const page2()),
                      );
                    },
                    child: const Text("Get Started >",
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
            const Spacer(),
            Container(
              height: 44,
              width: 400,
              color: const Color.fromRGBO(123, 123, 123, 1),
            )
          ],
        ),
      ),
    );
  }
}
