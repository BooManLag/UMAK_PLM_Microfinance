import 'package:flutter/material.dart';
import 'package:untitled/Screens/intro/second.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/Logo_2.png',
                          height: 50,
                        ),
                        Image.asset(
                          'assets/people/first.png',
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
                        'Easy to spot a yellow car when you are \nalways thinking of a yellow car.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13.0,
                          color: Color(0xFF6E6E6E)
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Center(
                      child: Text(
                        'Easy to spot opportunity when you \nare always thinking of opportunity.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16.0,
                            color: Color(0xFF2F83D6),
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(builder: (context) => SecondScreen())
                        );
                      },
                      splashColor: Colors.white10,
                      child: Image.asset(
                        'assets/ring/ring_1.png',
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
