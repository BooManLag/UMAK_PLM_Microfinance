import 'package:flutter/material.dart';
import '../product/productList.dart';
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
    ProductListScreen(),
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
              Icons.money,
            ),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
            ),
            label: 'Modules',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
              label: 'Profile',
          ),
        ],
      ),
    );
  }
}
