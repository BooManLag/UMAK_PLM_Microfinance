import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expenses;
  MoneyCard({required this.balance,required this.income,required this.expenses});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.teal[300],
        ),
        height: 200.0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'BALANCE',
                style: TextStyle(
                  letterSpacing: 5.0,
                  fontSize: 16.0,
                  color: Colors.grey[700]
                ),
              ),
              Text(
                '₱' + balance,
                style: TextStyle(
                    letterSpacing: 5.0,
                    fontSize: 36.0
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[200],
                            ),
                            child: Center(
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.green,
                                ),
                            ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Income',
                            ),
                            SizedBox(height: 5),
                            Text(
                              '₱' + income,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expenses',
                            ),
                            SizedBox(height: 5),
                            Text(
                              '₱' + expenses,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
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
