import 'package:assignment_46homerentalapp/ui3.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreen();
}

class _HomeScreen extends State {
  List houselist = [
    {
      "name": "Night Hill Villa",
      "add": "London,Night Hill",
      "image_path": 'assets/images/House2.png',
      "rate": "5900"
    },
    {
      "name": "Night Villa",
      "add": "London,New Park",
      "image_path": 'assets/images/House3.png',
      "rate": "4900"
    },
  ];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Hey Dravid ,",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(101, 101, 101, 1)),
                    )),
                const Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("assets/images/Ellipse 1.png"),
                )
              ],
            ),
            Text("Let’s find your best \nresidence",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                )),
            const SizedBox(height: 15),
            SizedBox(
              height: 45,
              width: 346,
              child: TextFormField(
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(33, 33, 33, 1)),
                ),
                keyboardType: TextInputType.text,
                controller: searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromRGBO(33, 33, 33, 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Search your favourite paradise",
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text("Most Popular",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    )),
                const Spacer(),
                Text("See All",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(32, 169, 247, 1)),
                    ))
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 290,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white),
                    height: 306,
                    width: 211,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            height: 195,
                            width: 189,
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 8, right: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(18),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Details()),
                                    );
                                  },
                                  child: Stack(fit: StackFit.expand, children: [
                                    Image.asset(
                                        "${houselist[index]["image_path"]}",
                                        fit: BoxFit.cover),
                                    Positioned(
                                        left: 135,
                                        top: 10,
                                        child: Container(
                                          height: 21,
                                          width: 45,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: const Color.fromRGBO(
                                                  112, 200, 250, 1)),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Color.fromARGB(
                                                    255, 207, 131, 18),
                                              ),
                                              Text(
                                                "4.8",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text("${houselist[index]["name"]}",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text("${houselist[index]["add"]}",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(72, 72, 72, 1)),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, bottom: 2),
                          child: Row(
                            children: [
                              Text("\$${houselist[index]["rate"]}",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(32, 169, 247, 1)),
                                  )),
                              Text("/Month",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(72, 72, 72, 1)),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text("Nearby your location",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    )),
                const Spacer(),
                Text("More",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(32, 169, 247, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    height: 95,
                    width: 70,
                    padding: const EdgeInsets.only(top: 8, left: 8),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 72,
                          width: 67,
                          margin: const EdgeInsets.only(
                              left: 2, right: 2, bottom: 2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(18),
                              child: Image.asset("assets/images/House4.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jumeriah Golf Estates Villa",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text("London,Area Plam Jumeriah",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(90, 90, 90, 1),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600),
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.chair,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("4 Bedrooms",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(90, 90, 90, 1),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w600),
                                      )),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Icon(
                                    Icons.bathtub,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("5 Bathrooms",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(90, 90, 90, 1),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w600),
                                      )),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 130),
                                child: Row(
                                  children: [
                                    Text("\$${houselist[index]["rate"]}",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  32, 169, 247, 1)),
                                        )),
                                    Text("/Month",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  72, 72, 72, 1)),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
