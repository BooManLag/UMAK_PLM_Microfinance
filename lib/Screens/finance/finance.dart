import 'package:flutter/material.dart';
import 'financeCard.dart';
import 'financeAdd.dart';
import 'financeTransaction.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {

  static List<Transactions> transactions = [
    Transactions(transactionName: 'Drinks', amount: '120', classification: 'expense'),
    Transactions(transactionName: 'Stipend', amount: '7000', classification: 'income'),
    Transactions(transactionName: 'Commission', amount: '4000', classification: 'income'),
    Transactions(transactionName: 'Food', amount: '200', classification: 'expense'),
    Transactions(transactionName: 'Grocery', amount: '1000', classification: 'expense'),
    Transactions(transactionName: 'Work', amount: '4000', classification: 'Income'),
    Transactions(transactionName: 'Drinks', amount: '120', classification: 'expense'),
  ];

  List<Transactions> displayTransaction = List.from(transactions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[600],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0,25.0,10.0,0.0),
        child: Column(
          children: [
            MoneyCard(
              balance: '20,000',
              income: '200',
              expenses: '200',
            ),
            Expanded(
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              itemCount: displayTransaction.length,
                              itemBuilder: (context,index){
                                return Transactions(
                                  transactionName: displayTransaction[index].transactionName,
                                  amount: '${displayTransaction[index].amount}',
                                  classification: displayTransaction[index].classification,
                                );
                              }
                          )
                        ),
                      ],
                    ),
                  ),
                ),
            ),
           AddButton(),
          ],
        ),
      ),
    );
  }
}
