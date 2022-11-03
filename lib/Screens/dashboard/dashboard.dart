import 'dart:io';

import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Color(0xFF2F83D6),
        bottomOpacity: 0.0,
        actions: [
          IconButton(
            onPressed: ()=> exit(0),
            icon:Icon(Icons.exit_to_app_outlined),
            //replace with our own icon data.
          )
        ],
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text("Profile")),
    );
  }
}
