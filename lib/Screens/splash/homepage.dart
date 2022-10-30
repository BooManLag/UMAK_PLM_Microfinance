import 'package:flutter/material.dart';
import '../product/product.dart';
import '../finance/finance.dart';
import '../module/module.dart';
import '../profile/profile.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  int currentIndex = 0;
  final screens = [
    FinanceScreen(),
    ProductScreen(),
    ModuleScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_outlined,
            ),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_outlined,
            ),
            label: 'Modules',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lightbulb_circle_outlined,
            ),
              label: 'About',
          ),
        ],
      ),
    );
  }
}
