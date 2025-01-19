import 'package:flutter/material.dart';

class MyNavigator extends StatefulWidget {
  const MyNavigator({super.key});

  @override
  State<StatefulWidget> createState() => _MyNavigator();
}

class _MyNavigator extends State {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedFontSize: 12,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromRGBO(245, 162, 69, 1),
      unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
