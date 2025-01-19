import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Checkout",
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
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Delivery Address",
                  style: GoogleFonts.imprima(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(121, 119, 128, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Rectangle 121.png"),
                  Text("25/3 Housing Estate, \nSylhet",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400))),
                  Text("Change",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(121, 119, 128, 1)))),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.watch_later_outlined,
                    color: Color.fromRGBO(123, 123, 141, 1),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Delivered in next 7 days",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ))),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Text("Payment Method",
                  style: GoogleFonts.imprima(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(121, 119, 128, 1)))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/visa.png"),
                  Image.asset("assets/images/american-express.png"),
                  Image.asset("assets/images/g13.png"),
                  Image.asset("assets/images/Group 10.png"),
                  Image.asset("assets/images/Vector.png"),
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  height: 54,
                  width: 315,
                  //color: const Color.fromRGBO(252, 252, 252, 1),
                  child: Text("Add Voucher",
                      style: GoogleFonts.imprima(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(121, 119, 128, 1))))),
              SizedBox(
                height: 82,
                width: 315,
                child: Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Note : ",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(255, 0, 0, 1)))),
                      Expanded(
                        child: Text(
                            " Use your order id at the payment. Your Id #154619 if you forget to put your order id we can’t confirm the payment.",
                            style: GoogleFonts.imprima(
                                textStyle: const TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(121, 119, 128, 1)))),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w400))),
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
                    child: Text("Pay Now",
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
        ));
  }
}
