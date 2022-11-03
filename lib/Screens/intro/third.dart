import 'package:flutter/material.dart';
import 'package:untitled/Screens/intro/third.dart';
import 'package:untitled/Screens/splash/homepage.dart';

import 'third.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2F83D6),
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/1.58,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text(
                              'Make money work for you, instead of working \nfor money.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/people/sixth.png',
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/2.72414,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0)
                        )
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 35.0,),
                      Center(
                        child: Text(
                          'Manage your finances!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18.0,
                              color: Color(0xFF2F83D6),
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Center(
                        child: Text(
                          'Stay informed of product prices to \nhelp you stay on top of your budget.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14.0,
                              color: Color(0xFF6E6E6E)
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0,),
                      InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StartingScreen())
                            );
                          },
                          splashColor: Colors.white10,
                          child: Image.asset(
                            'assets/ring/ring_3.png',
                            height: 100,
                            width: 100,
                          )
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}