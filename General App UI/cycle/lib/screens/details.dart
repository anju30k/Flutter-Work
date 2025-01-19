import 'package:assignment_49cycle/screens/shopping.dart';
import 'package:assignment_49cycle/screens/splashs.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  List imageList = [
    {"id": 1, "image_path": 'assets/images/pngwingp.png'},
    {"id": 2, "image_path": 'assets/images/pngwingp.png'},
    {"id": 3, "image_path": 'assets/images/pngwingp.png'}
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
                painter: Mypainter(),
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
                          color: Color.fromARGB(40, 255, 255, 255))),
                ),
              )),
          Positioned(
            top: 45,
            left: 18,
            right: 15,
            child: Row(
              children: [
                Text(
                  "GT BIKE",
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

          // Carousel Slider
          Positioned(
              top: 130,
              left: -10,
              right: 0,
              child: SizedBox(
                height: 360,
                child: CarouselSlider(
                    items: imageList
                        .map((item) => Image.asset(
                              item['image_path'],
                              width: double.infinity,
                            ))
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                        height: 367,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        })),
              )),

          // Indicator Dots for Carousel
          Positioned(
            top: 470,
            left: 160,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 10,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 1.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? const Color.fromRGBO(0, 0, 0, 1)
                              : const Color.fromRGBO(217, 217, 217, 1)),
                    ),
                  );
                }).toList()),
          ),
          Positioned(
              top: 490,
              child: Container(
                height: 354,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(53, 63, 84, 0.8),
                      Color.fromRGBO(34, 40, 52, 0.8)
                    ]),
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(20, 255, 255, 255))),
                child: Stack(
                  children: [
                    Positioned(
                        top: 15,
                        width: 108,
                        left: 20,
                        child: Container(
                          height: 37,
                          width: 108,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 5)
                              ],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors
                                    .transparent, // Transparent border color
                                width: 1,
                              ),
                              color: const Color.fromRGBO(36, 44, 59, 1),
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(50, 255, 255, 255),
                                    Color.fromARGB(0, 255, 255, 255)
                                  ])),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(36, 44, 59, 1)),
                            child: Text(
                              "Description",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.white)),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 15,
                        right: 25,
                        child: Container(
                          height: 37,
                          width: 121,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 5)
                              ],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors
                                    .transparent, // Transparent border color
                                width: 1,
                              ),
                              color: const Color.fromRGBO(36, 44, 59, 1),
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(50, 255, 255, 255),
                                    Color.fromARGB(0, 255, 255, 255)
                                  ])),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(72, 92, 236, 1)),
                            child: Text(
                              "Specification",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.white)),
                            ),
                          ),
                        )),
                    Positioned(
                      top: 60,
                      child: Container(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        width: 360,
                        child: Text(
                          "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      child: Container(
                        alignment: Alignment.center,
                        height: 116,
                        width: 385,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(36, 44, 59, 1),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, -8),
                                  blurRadius: 20,
                                  color: Color.fromRGBO(0, 0, 0, 0.4))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "\$2,599.99",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30,
                                      color: Color.fromRGBO(255, 255, 255, 1))),
                            ),
                            Container(
                              height: 50,
                              width: 187,
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        blurStyle: BlurStyle.outer,
                                        offset: Offset(0, 5),
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        blurRadius: 5)
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(50, 255, 255, 255),
                                    Color.fromARGB(0, 255, 255, 255)
                                  ])),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Shopping()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(colors: [
                                        Color.fromRGBO(55, 182, 233, 1),
                                        Color.fromRGBO(75, 76, 237, 1)
                                      ])),
                                  child: Text(
                                    "Buy Now",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 30,
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
