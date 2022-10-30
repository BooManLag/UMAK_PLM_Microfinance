import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  final String transactionName;
  final String amount;
  final String classification;

  Transactions({required this.transactionName, required this.amount, required this.classification});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          color: Colors.grey[400]
                        ),
                        child: Center(
                          child: Icon(
                            Icons.attach_money,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        transactionName,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    (classification == 'expense' ? '-' : '+') + '₱' + amount,
                    style: TextStyle(
                      color: (classification == 'expense' ? Colors.red : Colors.green),
                      fontSize: 16.0,
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
