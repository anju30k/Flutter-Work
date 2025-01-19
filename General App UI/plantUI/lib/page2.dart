import 'package:flutter/material.dart';
import 'package:assignment_33/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  State createState() => _page2();
}

class _page2 extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(123, 123, 123, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 128.2,
            width: 210,
            // padding: EdgeInsets.only(top: -10, left: -49),
            child: Image.asset("lib/Group 5314.png"),
          ),
          Center(
            child: Column(
              children: [
                Container(
                    height: 45,
                    width: 89,
                    //padding: const EdgeInsets.only(top: 139, left: 136),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  width: 320,
                  child: TextFormField(
                    //controller: numbercontroller,
                    style: const TextStyle(
                        color: Color.fromRGBO(204, 211, 196, 1)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Mobile Number",
                      hintStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(164, 164, 164, 1)),
                      prefixIcon: const Icon(
                        size: 17,
                        Icons.phone,
                        color: Color.fromRGBO(164, 164, 164, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
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
                            MaterialPageRoute(
                                builder: (context) => const page3()),
                          );
                        },
                        child: const Text(
                          " Log in",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ))),
                Image.asset("lib/Group 5315.png"),
                Container(
                  height: 29,
                  width: 400,
                  color: const Color.fromRGBO(123, 123, 123, 1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
