import 'package:assignment48fashion/screens.dart/checkout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart",
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "My Orders",
              style: GoogleFonts.imprima(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 40)),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => Slidable(
                    endActionPane:
                        ActionPane(motion: const BehindMotion(), children: [
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
                        icon: Icons.favorite_border,
                        foregroundColor: Colors.white,
                      ),
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
                        icon: Icons.delete_outline,
                        foregroundColor: Colors.white,
                      )
                    ]),
                    child: Container(
                      height: 144,
                      width: 315,
                      margin: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Image.asset("assets/images/img7.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Premium \nTagerine Shirt",
                                  style: GoogleFonts.imprima(
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400))),
                              Text("Yellow \nSize 8",
                                  style: GoogleFonts.imprima(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(121, 119, 128, 1),
                                  ))),
                              Row(
                                children: [
                                  Text("\$257.85",
                                      style: GoogleFonts.imprima(
                                          textStyle: const TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.w400))),
                                  const SizedBox(
                                    width: 45,
                                  ),
                                  Text("1x",
                                      style: GoogleFonts.imprima(
                                          textStyle: const TextStyle(
                                              fontSize: 34,
                                              fontWeight: FontWeight.w400))),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ))),
            const Divider(),
            Row(
              children: [
                Text("Total Items (3)",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(121, 119, 128, 1),
                    ))),
                const SizedBox(
                  width: 126,
                ),
                Text("\$116.00",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
              ],
            ),
            Row(
              children: [
                Text("Standard Delivery",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(121, 119, 128, 1),
                    ))),
                const SizedBox(
                  width: 105,
                ),
                Text("\$12.00",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
              ],
            ),
            Row(
              children: [
                Text("Total Payment",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(121, 119, 128, 1),
                    ))),
                const SizedBox(
                  width: 124,
                ),
                Text("\$126.00",
                    style: GoogleFonts.imprima(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: GestureDetector(
                onTap: () {
                  
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Checkout()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 62,
                  width: 190,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 122, 0, 1),
                      borderRadius: BorderRadius.circular(90)),
                  child: Text("Checkout Now",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
