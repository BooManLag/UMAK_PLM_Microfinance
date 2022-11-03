import 'package:flutter/material.dart';
import 'package:untitled/Screens/intro/first.dart';
import '../intro/first.dart';
import 'homepage.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F83D6),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/1.6,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(500.0),
                    bottomLeft: Radius.circular(500.0)
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Apportunity',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0,
                            fontFamily: 'Inter',
                            color: Color(0xFFFBBB00)
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Center(
                      child: Text(
                        'Locate financial services \n& growth opportunities easier',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Inter',
                            color: Color(0xFF6E6E6E)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Center(
                    child: Image.asset('assets/Logo.png')
                ),
                SizedBox(height: 10.0),
                Column(
                  children: [
                    Center(
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstScreen()
                              )
                          );
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50.0,5.0,50.0,5.0),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter',
                                color: Color(0xFF6E6E6E)
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Center(
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StartingScreen()
                              )
                          );
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12.0,5.0,12.0,5.0),
                          child: Text(
                            'Go to Finance Manager',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF6E6E6E)
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

