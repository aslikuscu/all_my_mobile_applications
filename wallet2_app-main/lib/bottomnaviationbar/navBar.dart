import 'package:flutter/material.dart';
import 'package:wallet2_app/pages/HomePage.dart';
import 'package:wallet2_app/pages/cartPages.dart';
import 'package:wallet2_app/pages/history_pages.dart';
import 'package:wallet2_app/pages/profile_pages.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  static List<Widget> pages = [
    HomePage(),
    CartPage(),
    HistoryPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(index),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/3.png',
                  height: myHeight * 0.03,
                  color: Colors.grey.shade300,
                ),
                label: '',
                activeIcon: Image.asset(
                  'images/3.png',
                  height: myHeight * 0.03,
                  color: Colors.purple,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/4.png',
                  height: myHeight * 0.03,
                  color: Colors.grey.shade300,
                ),
                label: '',
                activeIcon: Image.asset(
                  'images/4.png',
                  height: myHeight * 0.03,
                  color: Colors.purple,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/5.png',
                  height: myHeight * 0.03,
                  color: Colors.grey.shade300,
                ),
                label: '',
                activeIcon: Image.asset(
                  'images/5.png',
                  height: myHeight * 0.03,
                  color: Colors.purple,
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/6.png',
                  height: myHeight * 0.03,
                  color: Colors.grey.shade300,
                ),
                label: '',
                activeIcon: Image.asset(
                  'images/6.png',
                  height: myHeight * 0.03,
                  color: Colors.purple,
                ),
              )
            ]),
      ),
    );
  }
}
