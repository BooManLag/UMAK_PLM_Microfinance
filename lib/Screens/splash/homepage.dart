import 'package:flutter/material.dart';
import '../product/product.dart';
import '../finance/finance.dart';
import '../module/module.dart';
import '../dashboard//dashboard.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  int currentIndex = 0;
  final screens = [
    DashboardScreen(),
    FinanceScreen(),
    ProductScreen(),
    ModuleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        unselectedItemColor: Color(0xFF6E6E6E),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w200
        ),
        selectedLabelStyle: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700
        ),
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
            Icons.calculate_outlined
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
              Icons.location_on_outlined,
            ),
            label: 'Opportunity',
          ),
        ],
      ),
    );
  }
}
