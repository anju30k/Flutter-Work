import 'package:flutter/material.dart';

class MyNavigator extends StatefulWidget {
  const MyNavigator({super.key});

  @override
  State<MyNavigator> createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: const Color.fromRGBO(75, 76, 237, 1),
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Container(
            width: 55,
            decoration: _selectedIndex == 0
                ? const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13)))
                : null,
            child: Image.asset(
              "assets/images/house.png",
            ),
          ),
          label: '',
          backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 55,
            decoration: _selectedIndex == 1
                ? const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13)))
                : null,
            child: Image.asset(
              "assets/images/shopping-bag.png",
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 55,
            decoration: _selectedIndex == 2
                ? const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13)))
                : null,
            child: Image.asset(
              "assets/images/wallet-add.png",
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 55,
            decoration: _selectedIndex == 3
                ? const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(75, 76, 237, 1)
                    ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13)))
                : null,
            child: Image.asset(
              "assets/images/user.png",
            ),
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
