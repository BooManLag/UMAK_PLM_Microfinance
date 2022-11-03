import 'package:flutter/material.dart';
import 'package:untitled/Screens/finance/financeTransaction.dart';

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
        padding: const EdgeInsets.only(bottom: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            padding: EdgeInsets.all(5.0),
            color: Colors.white,
            height: 50.0,
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: transaction.classification == 'expense' ?  Colors.red : Colors.green
                          ),
                          child: Center(
                            child: Icon(
                              transaction.classification == 'expense' ? Icons.arrow_downward : Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          transaction.transactionName,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      (transaction.classification == 'expense' ? '-' : '+') + '₱' + transaction.amount,
                      style: TextStyle(
                        color: (transaction.classification == 'expense' ? Colors.red : Colors.green),
                        fontSize: 16.0,
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
