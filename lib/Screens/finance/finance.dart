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
  final _textcontrollerAMOUNT = TextEditingController();
  final _textcontrollerITEM = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isIncome = false;

  void _enterTransaction() {
    setState(() {});
  }

  void _newTransaction(){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context){
          return StatefulBuilder(
              builder: (context, setState){
                return AlertDialog(
                  title: Text(
                    'NEW TRANSACTION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.5,
                    ),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Expenses',
                            ),
                            Switch(
                              value: _isIncome,
                              onChanged: (newValue) {
                                setState(() {
                                  _isIncome = newValue;
                                });
                              },
                            ),
                            Text(
                              'Income',
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Form(
                                key: _formKey,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Amount',
                                  ),
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'Enter an amount';
                                    }
                                    return null;
                                  },
                                  controller: _textcontrollerAMOUNT,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0,),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Transaction Name',
                                ),
                                controller: _textcontrollerITEM,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    MaterialButton(
                      color: Colors.grey[600],
                      child:
                      Text('Cancel', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    MaterialButton(
                      color: Colors.grey[600],
                      child: Text('Enter', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _enterTransaction();
                          Navigator.of(context).pop();
                        }
                      },
                    )
                  ],
                );
              }
          );
        }
    );
  }

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
           AddButton(
             function: _newTransaction,
           ),
          ],
        ),
      ),
    );
  }
}
