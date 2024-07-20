import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammynet/views/account/account.dart';
import 'package:hammynet/views/basket/basketScreen.dart';
import 'package:hammynet/views/browse/browse.dart';
import 'package:hammynet/views/services/servicesScreen.dart';

import '../home/homeScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const BrowseScreen(),
    const ServicesScreen(),
    const BasketScreen(),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: 60.0,
        items: const <Widget>[
          Icon(FontAwesomeIcons.home),
          Icon(FontAwesomeIcons.boxesStacked),
          Icon(FontAwesomeIcons.magnifyingGlass),
          Icon(FontAwesomeIcons.cartShopping),
          Icon(Icons.person, size: 35),
        ],
        color: Colors.lightBlue,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 150),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
