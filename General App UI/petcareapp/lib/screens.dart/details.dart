import 'package:assignment_47petcareapp/screens.dart/veterinarys.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrDetails extends StatefulWidget {
  const DrDetails({super.key});

  @override
  State<DrDetails> createState() => _DrDetailsState();
}

class _DrDetailsState extends State<DrDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 15),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Veterinarys(),
                          ));
                    },
                    child: Container(
                      height: 26,
                      width: 26,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: const Icon(Icons.arrow_back_ios,
                          size: 13, color: Color.fromRGBO(245, 146, 69, 1)),
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Veterinary",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white)),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 15),
              Image.asset("assets/images/image (13).png"),
              const SizedBox(height: 15),
            ]),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32), topLeft: Radius.circular(32)),
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr. Anna Jhonason",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Color.fromRGBO(0, 0, 0, 1)))),
                  const SizedBox(height: 8),
                  Text("Veterinary Behavioral",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(194, 195, 204, 1)))),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 62,
                        width: 98,
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 11),
                                  blurRadius: 25,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08))
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Experience",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color.fromRGBO(31, 32, 41, 1)))),
                            Text("11 years",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(245, 146, 69, 1)))),
                          ],
                        ),
                      ),
                      Container(
                        height: 62,
                        width: 98,
                        padding: const EdgeInsets.only(top: 10, left: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 11),
                                  blurRadius: 25,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08))
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Price",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color.fromRGBO(31, 32, 41, 1)))),
                            Text("\$250",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(245, 146, 69, 1)))),
                          ],
                        ),
                      ),
                      Container(
                        height: 62,
                        width: 98,
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 11),
                                  blurRadius: 25,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08))
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color.fromRGBO(31, 32, 41, 1)))),
                            Text("2.5 Km",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(245, 146, 69, 1)))),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text("About",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 1)))),
                  Text(
                      "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(194, 195, 204, 1)))),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Available Days",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 0, 0, 1)))),
                      const Spacer(),
                      const Icon(
                        Icons.calendar_month_outlined,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("October, 2023",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(194, 195, 204, 1)))),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("Fri, 6",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(49, 29, 14, 1)))),
                      ),
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("Sat, 7",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(49, 29, 14, 1)))),
                      ),
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("Sun, 8",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white))),
                      ),
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("Mon, 9",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(49, 29, 14, 1)))),
                      ),
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("Tue, 10",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white))),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text("Available Time",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 1)))),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("09.00",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(252, 251, 250, 1)))),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("15.00",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(49, 29, 14, 1)))),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 36,
                        width: 60,
                        padding: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromRGBO(245, 146, 69, 1))),
                        child: Text("19.00",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(49, 29, 14, 1)))),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Center(
                    child: Container(
                      height: 32,
                      width: 328,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(252, 219, 193, 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/fi_map.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "See Location",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(163, 97, 46, 1))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Container(
                      height: 32,
                      width: 328,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(245, 146, 69, 1)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Book Now",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(255, 255, 255, 1)))),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
