import 'package:flutter/material.dart';
import '../splash/homepage.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                          Navigator.popUntil(context, (route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StartingScreen())
                          );
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFFBBB00)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12.0,5.0,12.0,5.0),
                          child: Text(
                            'Go to Finance Manager',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: Colors.white
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

