import 'dart:io';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/finance/finance.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  double total = AccessTotal.total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: MediaQuery.of(context).size.height * 0.19,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF2F83D6),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, User!',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 24
                  ),
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 370,
                        decoration: BoxDecoration(
                          color: Color(0xFFFBBB00),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0,30.0,15.0,30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Current Balance:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 13
                                ),
                              ),
                              Text(
                                '₱${total}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 36
                                ),
                              ),
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                ),
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
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'Discover grants you’re qualified to avail',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontFamily: 'Inter',
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 150,
                            width: 123,
                            decoration: BoxDecoration(
                                color: Color(0xFF2F83D6),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/category/student.png',
                                  width: 100,
                                ),
                                Text(
                                  'Student',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 150,
                            width: 123,
                            decoration: BoxDecoration(
                                color: Color(0xFF2F83D6),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(height: 15.0,),
                                Image.asset(
                                  'assets/category/unemployed.png',
                                  width: 100,
                                ),
                                Text(
                                  'Unemployed',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: 15.0,),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 150,
                            width: 123,
                            decoration: BoxDecoration(
                                color: Color(0xFF2F83D6),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(height: 10.0,),
                                Image.asset(
                                  'assets/category/single.png',
                                  width: 100,
                                ),
                                Text(
                                  'Single Parents',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

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
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 120,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[700],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0,25.0,15.0,10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'View up to date product prices in the market to help you budget',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.white
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
                        )
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '💸 Finance Manager',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 120,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[700],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0,35.0,15.0,10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'View your current financial standing',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 7,),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
