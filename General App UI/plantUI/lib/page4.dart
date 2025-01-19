import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  State createState() => _page4();
}

class _page4 extends State {
  List list = [];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(123, 123, 123, 1),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Image.asset("lib/Mask group.png"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 200,
                        child: const Text(
                          "Find your favourite plants",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(204, 211, 196, 1)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                  offset: Offset(0, 20),
                                  blurRadius: 40,
                                  spreadRadius: 0)
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.shopping_bag),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 108,
                      width: 320,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 108,
                            width: 310,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(204, 231, 185, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "30 % OFF",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "02-23 April",
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Image.asset("lib/Group 5318.png")
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
                Container(height: 30),
                Text("Indoor"),
                Container(
                  height: 188,
                ),
                Text("Outdoor"),
                Container(
                  height: 188,
                ),
              ],
            ),
          ),
        ));
  }
}
