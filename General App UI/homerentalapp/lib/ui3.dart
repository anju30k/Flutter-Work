import 'package:assignment_46homerentalapp/ui2.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State createState() => _Details();
}

class _Details extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    child: const Icon(Icons.arrow_back)),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Text(
                    "Details",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Stack(children: [
              Center(child: Image.asset("assets/images/House5.png")),
              Positioned(
                  left: 15,
                  top: 10,
                  child: Container(
                    height: 21,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(112, 200, 250, 1)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Color.fromARGB(255, 207, 131, 18),
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ))
            ]),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Night Hill Villa",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("\$5900",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(32, 169, 247, 1)),
                    )),
                Text("/Month",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(72, 72, 72, 1)),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Text(
                "London,Night Hill",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(72, 72, 72, 1)),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  height: 141,
                  width: 108,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.chair,
                          size: 15, color: Color.fromRGBO(90, 90, 90, 1)),
                      Text(
                        "Bedrooms",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(90, 90, 90, 1)),
                        ),
                      ),
                      Text(
                        "5",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 141,
                  width: 108,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.bathtub,
                          size: 15, color: Color.fromRGBO(90, 90, 90, 1)),
                      Text(
                        "Bathrooms",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(90, 90, 90, 1)),
                        ),
                      ),
                      Text(
                        "6",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 141,
                  width: 108,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.square_foot,
                          size: 15, color: Color.fromRGBO(90, 90, 90, 1)),
                      Text(
                        "Square ft",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(90, 90, 90, 1)),
                        ),
                      ),
                      Text(
                        "7,000 sq ft",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(clipBehavior: Clip.none, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 346,
                  child: Text(
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: Container(
                  height: 113,
                  width: 430,
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        offset: Offset(-10, 0),
                        blurRadius: 30,
                        spreadRadius: 20)
                  ]),
                ),
              ),
              Positioned(
                left: 70,
                top: 150,
                child: SizedBox(
                  height: 55,
                  width: 220,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(32, 169, 247, 1)),
                      onPressed: () {},
                      child: const Text(
                        "Rent Now",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )),
                ),
              )
            ])
          ],
        ),
      ),
    ));
  }
}
