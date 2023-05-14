import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late bool isActive = false;
  late int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: _selectedIndex,
      onItemSelected: (index) {
        setState(() => _selectedIndex = index);
        _pageController.jumpToPage(index);
      },
      items: [
        BottomNavyBarItem(
          textAlign: TextAlign.center,
          activeColor: kPrimaryColor,
          inactiveColor: Colors.black,
          icon: const Icon(
            Icons.apps,
          ),
          title: const Text(
            'Home',
          ),
        ),
        BottomNavyBarItem(
          textAlign: TextAlign.center,
          activeColor: kPrimaryColor,
          inactiveColor: Colors.black,
          icon: const Icon(
            Icons.favorite_outline,
          ),
          title: const Text(
            'Favourite',
          ),
        ),
        BottomNavyBarItem(
          textAlign: TextAlign.center,
          activeColor: kPrimaryColor,
          inactiveColor: Colors.black,
          icon: const Icon(
            Icons.shopping_bag,
          ),
          title: const Text(
            'Cart',
          ),
        ),
      ],
    );
  }
}
