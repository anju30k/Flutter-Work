import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  List cart = [
    {
      'Name': "GT Bike",
      'Image': "assets/images/png.png",
      'Price': "\$2,599",
      'counter': 0
    },
    {
      'Name': "Helmet",
      'Image': "assets/images/img 3.png",
      'Price': "\$125.99",
      'counter': 0
    },
    {
      'Name': "Bottle",
      'Image': "assets/images/img 6.png",
      'Price': "\$115.99",
      'counter': 0
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        children: [
          Positioned(
            top: 300,
            left: -15,
            child: SizedBox(
              height: 597,
              width: 445,
              child: CustomPaint(
                painter: Mypainter2(),
              ),
            ),
          ),
          Positioned(
              top: 100,
              left: 228,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "EXTREME",
                  style: GoogleFonts.allertaStencil(
                      textStyle: const TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 255, 255, 0.2))),
                ),
              )),
          Positioned(
            top: 45,
            left: 18,
            right: 15,
            child: Row(
              children: [
                Text(
                  "My Shopping Cart",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(72, 92, 236, 1),
                            Color.fromRGBO(75, 76, 237, 1)
                          ])),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        width: 2,
                        color: Color.fromRGBO(255, 255, 255, 0.100),
                      ))),
                      child: Row(
                        children: [
                          Container(
                            height: 108,
                            width: 130,
                            margin: const EdgeInsets.only(bottom: 20),
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    blurStyle: BlurStyle.outer,
                                    offset: Offset(5, 6),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    color: Color.fromRGBO(0, 0, 0, 0.25)),
                                BoxShadow(
                                    blurStyle: BlurStyle.inner,
                                    offset: Offset(6, 6),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    color: Color.fromRGBO(0, 0, 0, 0.25)),
                              ],
                              border: Border.all(
                                  width: 2,
                                  color: const Color.fromRGBO(
                                      255, 255, 255, 0.100)),
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(53, 63, 84, 0.6),
                                Color.fromRGBO(34, 40, 52, 0)
                              ]),
                            ),
                            child: Image.asset(
                              cart[index]['Image'],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cart[index]['Name'],
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Text(
                                    cart[index]['Price'],
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                55, 182, 233, 1))),
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 31,
                                    width: 67,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              blurStyle: BlurStyle.inner,
                                              offset: Offset(0, 1),
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.5),
                                              blurRadius: 3)
                                        ],
                                        color: const Color.fromRGBO(
                                            30, 30, 30, 0.8),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              log('in add');
                                              cart[index]['counter']++;
                                            });
                                          },
                                          child: Container(
                                            height: 23,
                                            width: 20,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                gradient: const LinearGradient(
                                                    colors: [
                                                      Color.fromRGBO(
                                                          55, 182, 233, 1),
                                                      Color.fromRGBO(
                                                          75, 76, 237, 1)
                                                    ])),
                                            child: const Icon(
                                              Icons.add,
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "${cart[index]['counter']}",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white)),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              log('in minus');
                                              if (cart[index]['counter'] >= 1) {
                                                cart[index]['counter']--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            height: 23,
                                            width: 20,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                gradient: const LinearGradient(
                                                    colors: [
                                                      Color.fromRGBO(
                                                          255, 255, 255, 0.080),
                                                      Color.fromRGBO(
                                                          195, 195, 195, 0.020)
                                                    ])),
                                            child: const Icon(
                                              Icons.remove,
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Positioned(
            top: 550,
            left: 70,
            child: Text(
              "Your Bag Qualifies for Free Shipping",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(255, 255, 255, 1))),
            ),
          ),
          Positioned(
              top: 580,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 348,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(0, 0, 0, 0.3)),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(36, 44, 59, 0.6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " 6Affg5",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(142, 142, 142, 1))),
                        ),
                        Container(
                          width: 137,
                          height: 44,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: const Color.fromRGBO(
                                      255, 251, 251, 0.059)),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(75, 76, 237, 1)
                              ])),
                          child: Text(
                            "Apply",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "\$2,841.99",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery fee",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "30%",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "\$1,989.37",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  Row(children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(55, 182, 233, 1),
                                  Color.fromRGBO(72, 92, 236, 1),
                                ])),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 15),
                    Text(
                      " Check Out",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white)),
                    ),
                  ])
                ],
              )),
        ],
      ),
    );
  }
}

class Mypainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path path1 = Path();
    path1.moveTo(size.width, 0);
    /*Explanation:
      # moveTo sets the starting point of the path.
      # It doesn't draw anything but just positions the "pen" at the specified coordinates.
      # size.width represents the width of the canvas, so size.width is the x-coordinate of the top-right corner of the canvas.
      # 0 is the y-coordinate of the top-right corner of the canvas.
      # The path starts at the top-right corner of the canvas. */

    path1.lineTo(0, size.height / 3);
    /*Explanation:
    # lineTo draws a straight line from the current point (the top-right corner) to the specified coordinates.
    # 0 is the x-coordinate, representing the left edge of the canvas.
    # size.height / 3 is the y-coordinate, one-third down from the top edge of the canvas.
    # This line goes from the top-right corner to a point on the left edge, one-third down from the top.
     */

    path1.lineTo(0, size.height);
    /*Explanation:
    # lineTo draws a straight line from the current point (the point one-third down the left edge) to the specified coordinates.
    # 0 is the x-coordinate, still on the left edge.
    # size.height is the y-coordinate, representing the bottom-left corner of the canvas.
    # This line goes from the one-third point on the left edge to the bottom-left corner. */

    path1.lineTo(size.width, size.height);
    /*Explanation:
    # lineTo draws a straight line from the current point (the bottom-left corner) to the specified coordinates.
    # size.width is the x-coordinate, representing the right edge of the canvas.
    # size.height is the y-coordinate, representing the bottom edge of the canvas.
    # This line goes from the bottom-left corner to the bottom-right corner.
     */
    path1.close();
    paint.color = const Color.fromRGBO(30, 30, 30, 1);
    canvas.drawPath(path1, paint);
    /*These commands collectively draw a shape that covers the lower portion of the canvas, 
    starting from the top-right corner, slanting down to one-third down the left side, 
    and then filling the bottom of the canvas. 
    The shape can be visualized as a quadrilateral (trapezoid) covering the described area.
     */
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
