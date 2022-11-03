import 'package:flutter/material.dart';
import 'package:untitled/Screens/intro/third.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
                              'Learn where to get scholarships, \nsubsidies, financial grants, trainings, and \nmore that you’re qualified to avail!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/people/second.png',
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
                          'Find financial assistance \nprograms & trainings!',
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
                          'Whether you’re a student, unemployed, or a \nsenior citizen, we’ll help you find services that \nwill aid you, because you deserve to know.',
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
                                MaterialPageRoute(builder: (context) => ThirdScreen())
                            );
                          },
                          splashColor: Colors.white10,
                          child: Image.asset(
                            'assets/ring/ring_2.png',
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