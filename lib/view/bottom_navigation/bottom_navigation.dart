import 'package:flutter/material.dart';
import 'package:flutter_task/view/cart_screen/cart_screen.dart';
import 'package:flutter_task/view/home_screen/home_screen.dart';
import 'package:flutter_task/view/profile_screen/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (selectedIndex == 0) {
          return true;
        } else {
          selectedIndex = 0;
          setState(() {});
          return false;
        }
      },
      child: Scaffold(
        body: _pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}

List _pages = const [HomeScreen(), CartScreen(), ProfileScreen()];
int selectedIndex = 0;
