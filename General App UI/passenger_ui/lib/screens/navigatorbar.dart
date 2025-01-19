import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passenger_ui/screens/searchscreen.dart';
import 'package:sizer/sizer.dart';

class MyBottomNavigatorBar extends StatefulWidget {
  const MyBottomNavigatorBar({super.key});

  @override
  State<MyBottomNavigatorBar> createState() => _MyBottomNavigatorBarState();
}

class _MyBottomNavigatorBarState extends State<MyBottomNavigatorBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.5.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(2.h),
          topRight: Radius.circular(2.h),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(216, 215, 215, 0.25),
            spreadRadius: 3,
            blurRadius: 6.5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(
                fontSize: 16.sp,
                color: Color.fromRGBO(210, 0, 0, 1),
                fontWeight: FontWeight.w500,
                fontFamily: GoogleFonts.poppins().fontFamily,
              );
            }
            return TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.poppins().fontFamily,
            );
          }),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Searchscreen()),
              );
            }
          },
          selectedIndex: _selectedIndex,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 3.5.h,
              ),
              selectedIcon: Icon(Icons.home, size: 3.5.h, color: Colors.red),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                size: 3.5.h,
              ),
              selectedIcon: Icon(Icons.account_balance_wallet,
                  size: 3.5.h, color: Colors.red),
              label: 'Wallet',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.history_outlined,
                size: 3.5.h,
              ),
              selectedIcon:
                  Icon(Icons.history_rounded, size: 3.5.h, color: Colors.red),
              label: 'History',
            ),
          ],
        ),
      ),
    );
  }
}
