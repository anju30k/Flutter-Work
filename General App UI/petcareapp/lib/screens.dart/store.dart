import 'package:assignment_47petcareapp/screens.dart/navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List datalist = [
    'assets/images/Pet Shop.png',
    'assets/images/Frame 2117.png',
    'assets/images/Pet Shop (1).png',
    'assets/images/Pet Shop (2).png',
    'assets/images/Pet Shop (3).png',
    'assets/images/Pet Shop (4).png'
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController serachController = TextEditingController();
    return Scaffold(
        bottomNavigationBar: const MyNavigator(),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 148,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5))),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello, Sarah",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1)))),
                            Text("Find your lovable Pets",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 1))))
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 125,
                  left: 40,
                  child: SizedBox(
                    height: 40,
                    width: 282,
                    child: TextFormField(
                      obscureText: true,
                      controller: serachController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          ),
                        ),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "Search Something Here...",
                        hintStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(194, 195, 204, 1))),
                        suffixIcon: const Icon(
                          Icons.search,
                          size: 20,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: MasonryGridView.builder(
                  mainAxisSpacing: 15,
                  itemCount: datalist.length,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  //padding: const EdgeInsets.all(8),
                  itemBuilder: (content, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("${datalist[index]}",
                              //height: 165,
                              fit: BoxFit.cover),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
