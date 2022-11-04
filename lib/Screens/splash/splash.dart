import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/Screens/intro/first.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Welcome(),
      ),
      designSize: const Size(412, 732),
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
            height: (MediaQuery.of(context).size.height/1.6),
            decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(500.0),
                    bottomLeft: Radius.circular(500.0)
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.0.w, 30.0.h, 30.0.w, 0.0),
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
                            fontSize: 40.0.sp,
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
                            fontSize: 16.0.sp,
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
                SizedBox(height: 10.0.h),
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
                          padding: EdgeInsets.symmetric(horizontal: 50.0.w, vertical: 5.0.h),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter',
                                color: Color(0xFF6E6E6E)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

