import 'package:assignment_49cycle/screens/details.dart';
import 'package:assignment_49cycle/screens/navigator.dart';
import 'package:assignment_49cycle/screens/splashs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomesState();
}

class _HomesState extends State<HomeScreen> {
  String? selectedLogo = "0";

  List logo = [
    "assets/images/image 2.png",
    "assets/images/image 1.png",
    "assets/images/image 3.png",
    "assets/images/image 4.png"
  ];

  List cycle = [
    "assets/images/pngwing (2).png",
    "assets/images/pngwing (1).png",
    "assets/images/pngwing (4).png",
    "assets/images/pngwing (5).png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const MyNavigator(),
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
              top: 105,
              left: 220,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "EXTREME",
                  style: GoogleFonts.allertaStencil(
                      textStyle: const TextStyle(
                          fontSize: 150,
                          color: Color.fromARGB(
                            10,
                            255,
                            255,
                            255,
                          ))),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 18,
              right: 18,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Choose Your \nBicycle",
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
                      child: const Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 136,
              left: 20,
              child: Container(
                height: 250,
                width: 345,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(53, 63, 84, 0.6),
                      Color.fromRGBO(34, 40, 52, 0.6)
                    ]),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(4, 7),
                          blurRadius: 10,
                          spreadRadius: 0,
                          color: Color.fromRGBO(0, 0, 0, 0.5))
                    ]),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/pngwing_.png",
                    ),
                    Positioned(
                      left: 205,
                      top: 10,
                      child: Text(
                        "EXTREME",
                        style: GoogleFonts.allertaStencil(
                            textStyle: const TextStyle(
                                fontSize: 32, color: Colors.white)),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      bottom: 10,
                      child: Text(
                        "30% OFF",
                        style: GoogleFonts.allertaStencil(
                            textStyle: const TextStyle(
                                fontSize: 32, color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 408,
              left: 20,
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: logo.length,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedLogo == logo[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedLogo = logo[index];
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                            gradient: isSelected
                                ? const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                        Color.fromRGBO(55, 182, 233, 1),
                                        Color.fromRGBO(72, 92, 236, 1),
                                        Color.fromRGBO(75, 76, 237, 1)
                                      ])
                                : const LinearGradient(colors: [
                                    Color.fromRGBO(255, 255, 255, 1),
                                    Color.fromRGBO(161, 161, 161, 1)
                                  ])),
                        child: Image.asset(
                          logo[index],
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              top: 460,
              left: 20,
              right: 20,
              bottom: 0,
              child: MasonryGridView.builder(
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: cycle.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Details()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(25, 0, 0, 0),
                                  offset: Offset(4, 4),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(60, 53, 63, 84),
                              Color.fromARGB(60, 34, 40, 52)
                            ]),
                            border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(
                                  20,
                                  255,
                                  255,
                                  255,
                                ))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                cycle[index],
                                fit: BoxFit.cover,
                              ),
                              // const SizedBox(height: 8),
                              Text(
                                "Road Bike",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color:
                                            Color.fromRGBO(195, 195, 195, 1))),
                              ),
                              Text(
                                "Kiross",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.white)),
                              ),
                              Text(
                                "\$1,599.99",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color:
                                            Color.fromRGBO(195, 195, 195, 1))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
