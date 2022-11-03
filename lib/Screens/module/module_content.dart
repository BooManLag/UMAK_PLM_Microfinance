import 'package:flutter/material.dart';

class ModuleContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF2F83D6),
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Apportunity',
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.0,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}