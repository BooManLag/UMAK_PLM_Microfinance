import 'package:flutter/material.dart';
import 'package:untitled/Screens/finance/financeTransaction.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransWidget extends StatelessWidget {
  final Transactions transaction;
  final VoidCallback onTap;
  const TransWidget({
    super.key,
    required this.transaction,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:  REdgeInsets.only(bottom: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: REdgeInsets.all(5.0),
            color: Color(0xFFEEEEEE),
            height: 50.0.h,
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: REdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: transaction.classification == 'expense' ?  Colors.red : Colors.green
                          ),
                          child: Center(
                            child: Icon(
                              transaction.classification == 'expense' ? Icons.arrow_downward : Icons.arrow_upward,
                              color: Color(0xFFEEEEEE),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h,),
                        Text(
                          transaction.transactionName,
                          style: TextStyle(
                            fontSize: 16.0.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      (transaction.classification == 'expense' ? '-' : '+') + '₱' + transaction.amount,
                      style: TextStyle(
                        color: (transaction.classification == 'expense' ? Colors.red : Colors.green),
                        fontSize: 16.0.sp,
                      ),
                    )
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
