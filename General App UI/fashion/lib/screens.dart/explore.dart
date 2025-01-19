import 'package:assignment48fashion/screens.dart/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List categories = ["All", "Mens", "Women", "Kids", "Others"];
  String? selectedCategory;

  List shirt = [
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png",
    "assets/images/img4.png"
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Icon(Icons.apps),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(
              Icons.person_2_outlined,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: const Color.fromRGBO(255, 122, 0, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore",
                style: GoogleFonts.imprima(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(13, 13, 14, 1),
                        fontSize: 36))),
            Text("Best trendy collection!",
                style: GoogleFonts.imprima(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(121, 119, 128, 1),
                        fontSize: 18))),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              //width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedCategory == categories[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = categories[index];
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color:
                                isSelected ? Colors.orange : Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            border: isSelected
                                ? null
                                : Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            categories[index],
                            style: GoogleFonts.imprima(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black)),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
                child: MasonryGridView.builder(
              itemCount: shirt.length,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(clipBehavior: Clip.none, children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Details()));
                            },
                            child: Image.asset(shirt[index])),
                        Positioned(
                          bottom: -18,
                          right: 15,
                          child: Container(
                            alignment: Alignment.center,
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 5)),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )
                      ]),
                      Text("\$240.32",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                            fontSize: 18,
                          ))),
                      Text("Tagerine Shirt",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                            fontSize: 16,
                          )))
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
