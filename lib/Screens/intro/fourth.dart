import 'package:flutter/material.dart';
import 'fifth.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

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
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Text(
                              '“You can borrow knowledge, but not action.” \nJames Clear',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/people/fourth.png',
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
                          'Locate the nearest establishment \nwith opportunities for you!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18.0,
                              color: Color(0xFF2F83D6),
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text(
                          'Put your gathered information to work \nby locating places that have available \nopportunities for you!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14.0,
                              color: Color(0xFF6E6E6E)
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FifthScreen())
                            );
                          },
                          splashColor: Colors.white10,
                          child: Image.asset(
                            'assets/ring/ring_4.png',
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