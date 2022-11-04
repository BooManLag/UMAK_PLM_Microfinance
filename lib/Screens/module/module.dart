import 'package:flutter/material.dart';
import 'categories/unemployed.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModuleScreen extends StatefulWidget {
  const ModuleScreen({Key? key}) : super(key: key);

  @override
  State<ModuleScreen> createState() => _ModuleScreenState();
}

class _ModuleScreenState extends State<ModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.fromLTRB(10.0,30.0,10.0,30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                          'Select your category',
                          style: TextStyle(
                            color: Color(0xFF2F83D6),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp
                          ),
                      ),
                    ),
                    SizedBox(height: 10.0.h,),
                    Center(
                      child: Text(
                        'Which among these would best describe you?',
                        style: TextStyle(
                            color: Color(0xFF303030),
                            fontFamily: 'Inter',
                            fontSize: 16.sp
                        ),
                      ),
                    )
                  ],
                ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 5.w,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          ).r
                      ),
                      height: 150.h,
                      width: 130.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 5.h,),
                          Image.asset(
                            'assets/category/student.png',
                            height: 100.h,
                          ),
                          Text(
                            'Student',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp
                            ),
                          ),
                          SizedBox(height: 5.h,),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => UnemployedList()
                          )
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          )
                      ),
                      height: 150.h,
                      width: 130.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 5.h,),
                          Image.asset(
                            'assets/category/unemployed.png',
                            height: 100.h,
                          ),
                          Text(
                            'Unemployed',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp
                            ),
                          ),
                          SizedBox(height: 5.h,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 5.w,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          )
                      ),
                      height: 150.h,
                      width: 130.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 5.h,),
                          Image.asset(
                            'assets/category/single.png',
                            height: 100.h,
                          ),
                          Text(
                            'Single Parent',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp
                            ),
                          ),
                          SizedBox(height: 5.h,),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          )
                      ),
                      height: 150.h,
                      width: 130.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 5.h,),
                          Image.asset(
                            'assets/category/senior.png',
                            height: 100.h,
                          ),
                          Text(
                            'Senior Citizen',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp
                            ),
                          ),
                          SizedBox(height: 5.h,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 5.w,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          )
                      ),
                      height: 150.h,
                      width: 130.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 5.h,),
                          Image.asset(
                            'assets/category/disability.png',
                            height: 100.h,
                          ),
                          Text(
                            'Person with \nDisability',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp
                            ),
                          ),
                          SizedBox(height: 5.h,),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          )
                      ),
                      height: 150.h,
                      width: 130.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 5.h,),
                          Image.asset(
                            'assets/category/other.png',
                            height: 100.h,
                          ),
                          Text(
                            'Others',
                            style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp
                            ),
                          ),
                          SizedBox(height: 5.h,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
