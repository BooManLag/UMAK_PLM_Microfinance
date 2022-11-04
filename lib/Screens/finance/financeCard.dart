import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoneyCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expenses;
  MoneyCard({required this.balance,required this.income,required this.expenses});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFEEEEEE),
        ),
        height: 200.0.h,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'BALANCE',
                style: TextStyle(
                  fontFamily: 'Inter',
                  letterSpacing: 5.0,
                  fontSize: 16.0.sp,
                  color: Colors.grey[700]
                ),
              ),
              Text(
                '₱' + balance,
                style: TextStyle(
                    fontFamily: 'Inter',
                    letterSpacing: 5.0,
                    fontSize: 36.0.sp,
                    color:  Color(0xFF6E6E6E)
                ),
              ),
              Padding(
                padding: REdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: REdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  spreadRadius: 3,
                                )
                              ]
                            ),
                            child: const Center(
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Color(0xFFEEEEEE),
                                ),
                            ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Income',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color:  Color(0xFF6E6E6E),
                                  fontSize: 12.sp
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              '₱' + income,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color:  Color(0xFF6E6E6E),
                                  fontFamily: 'Inter',
                                  fontSize: 12.sp
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: REdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                              color: Colors.red,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  spreadRadius: 3,
                                )
                              ]
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_downward,
                              color: Color(0xFFEEEEEE),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expenses',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color:  Color(0xFF6E6E6E),
                                  fontSize: 12.sp
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              '₱' + expenses,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter',
                                  color:  Color(0xFF6E6E6E),
                                  fontSize: 12.sp
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
