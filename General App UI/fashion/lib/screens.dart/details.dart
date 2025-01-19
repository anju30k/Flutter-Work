import 'package:assignment48fashion/screens.dart/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List size = ["S", "M", "L", "XL", "XXL"];
  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details",
            style: GoogleFonts.imprima(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 18))),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Icon(Icons.arrow_back_ios),
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.bookmark_border),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/images/img6.png")),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 209,
                  child: Text("Premium\nTagerine Shirt",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 30))),
                ),
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/images/Ellipse 14.png"),
                ),
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/images/Ellipse 15.png"),
                ),
                const CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/images/Ellipse 16.png"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 5, bottom: 10),
              child: Text("Size",
                  style: GoogleFonts.imprima(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 24))),
            ),
            SizedBox(
              height: 44,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: size.length,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedSize == size[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSize = size[index];
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 14),
                        decoration: BoxDecoration(
                            color: isSelected ? Colors.black : null,
                            borderRadius: BorderRadius.circular(12),
                            border: isSelected
                                ? null
                                : Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            size[index],
                            style: GoogleFonts.imprima(
                                textStyle: TextStyle(
                                    fontSize: 24,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black)),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("\$257.85",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w400))),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Cart()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 62,
                    width: 162,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 122, 0, 1),
                        borderRadius: BorderRadius.circular(90)),
                    child: Text("Add To Cart",
                        style: GoogleFonts.imprima(
                            textStyle: const TextStyle(
                                fontSize: 18, color: Colors.white))),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
