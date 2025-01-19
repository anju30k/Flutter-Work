import 'package:assignment_47petcareapp/screens.dart/store.dart';
import 'package:assignment_47petcareapp/screens.dart/veterinarys.dart';
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
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      unselectedFontSize: 12,
      backgroundColor: Colors.white,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromRGBO(255, 122, 0, 1),
      unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Veterinarys()));
            },
            child: const Icon(
              Icons.favorite_border,
            ),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Shop()));
            },
            child: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
          label: 'Shop',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.history_toggle_off,
          ),
          label: 'History',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outlined,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
