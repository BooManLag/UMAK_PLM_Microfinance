import 'package:flutter/material.dart';
import 'package:untitled/Screens/intro/sixth.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

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
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text(
                              'Access store product prices at your fingertips.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/people/fifth.png',
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
                      SizedBox(height: 20.0,),
                      Center(
                        child: Text(
                          'See current store prices at a \nglance!',
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
                      SizedBox(height: 20.0,),
                      InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SixthScreen())
                            );
                          },
                          splashColor: Colors.white10,
                          child: Image.asset(
                            'assets/ring/ring_5.png',
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