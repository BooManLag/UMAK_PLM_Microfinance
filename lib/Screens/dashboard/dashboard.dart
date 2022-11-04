import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/Screens/finance/finance.dart';
import 'package:untitled/Screens/module/categories/unemployed.dart';
import 'package:untitled/Screens/splash/homepage.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  double total = AccessTotal.total;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height * 0.15).h,
                  color: Color(0xFF2F83D6),
                ),
              ],
            ),
            Padding(
              padding: REdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0.h),
                  Text(
                    'Welcome, User!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp
                    ),
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 130.h,
                          width: 370.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBBB00),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Padding(
                            padding: REdgeInsets.fromLTRB(15.0,30.0,15.0,30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your Current Balance:',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 13.sp
                                  ),
                                ),
                                Text(
                                  '₱${total}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 36.sp
                                  ),
                                ),
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0.h),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '🤝 Opportunities  for you',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontFamily: 'Inter',
                                  fontSize: 14.0.sp,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              Text(
                                'Discover grants you’re qualified to avail',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontFamily: 'Inter',
                                    fontSize: 14.0.sp,
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => StartingScreen(currentIndex: 3,))
                              );
                            },
                            child: Text(
                              'View All',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Inter',
                                fontSize: 14.0.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 150.h,
                              width: 123.w,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2F83D6),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    'assets/category/student.png',
                                    width: 100.w,
                                  ),
                                  Text(
                                    'Student',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => UnemployedList())
                              );
                            },
                            child: Container(
                              height: 150.h,
                              width: 123.w,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2F83D6),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(height: 10.0.h,),
                                  Image.asset(
                                    'assets/category/unemployed.png',
                                    width: 100,
                                  ),
                                  Text(
                                    'Unemployed',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp
                                    ),
                                  ),
                                  SizedBox(height: 10.0.h,),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10.h,),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 150.h,
                              width: 123.w,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2F83D6),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(height: 10.0.h,),
                                  Image.asset(
                                    'assets/category/single.png',
                                    width: 100.w,
                                  ),
                                  Text(
                                    'Single Parents',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp
                                    ),
                                  ),
                                  SizedBox(height: 10.0.h,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '📊 Product Prices',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => StartingScreen(currentIndex: 2,))
                              );
                            },
                            child: Container(
                              height: 120.h,
                              width: 190.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Colors.grey[700],
                              ),
                              child: Padding(
                                padding: REdgeInsets.fromLTRB(15.0,25.0,15.0,10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'View up to date product prices in the market',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 5.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '💸 Finance Manager',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => StartingScreen(currentIndex: 1,))
                              );
                            },
                            child: Container(
                              height: 120.h,
                              width: 190.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: Colors.grey[700],
                              ),
                              child: Padding(
                                padding: REdgeInsets.fromLTRB(15.0,25.0,15.0,10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'View your current financial standing',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
