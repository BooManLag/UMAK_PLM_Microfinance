import 'package:flutter/material.dart';
import '../product/product.dart';
import '../finance/finance.dart';
import '../module/module.dart';
import '../dashboard//dashboard.dart';

class StartingScreen extends StatefulWidget {
  int currentIndex = 0;
  StartingScreen({super.key, required this.currentIndex});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  final screens = [
    DashboardScreen(),
    FinanceScreen(),
    ProductScreen(),
    ModuleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[widget.currentIndex],
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
        currentIndex: widget.currentIndex,
        onTap: (index) => setState(() => widget.currentIndex = index),
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
