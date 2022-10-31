import 'package:flutter/material.dart';
import '../../controllers/transaction_controller.dart';
import '../../widgets/transaction_widget.dart';
import 'addFunction.dart';
import 'financeCard.dart';
import 'financeAdd.dart';
import 'financeTransaction.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
  final TransactionController transactionController = TransactionController();

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
                          child: FutureBuilder<List<Transactions>?>(
                            future: transactionController.getTransactions(),
                            builder: (context, snapshot){
                              if(snapshot.hasData){
                                final List<Transactions> transactions = snapshot.data ?? [];
                                if(transactions.isEmpty){
                                  return const Center(
                                    child: Text('No Transactions Yet'),
                                  );
                                }
                                return ListView.builder(
                                    itemCount: transactions.length,
                                    itemBuilder: (context, index) => TransWidget(
                                      transaction: transactions[index],
                                      onTap: () async {
                                        await Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => AddTransactionScreen(
                                              action: transactionController.deleteTransaction,
                                              deleteTrans: transactions[index],
                                            ),
                                          ),
                                        );
                                        setState(() {});
                                      },
                                    )
                                );
                              }
                              if (snapshot.hasError) {
                                return Center(
                                  child: Text(
                                    "An error has occurred ${snapshot.error}",
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }
                              return const Center(
                                child: CircularProgressIndicator(),
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
                function: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AddTransactionScreen(
                        action: transactionController.addTransaction,
                      ),
                    ),
                  );
                  setState(() {});
                },
            )
          ],
        ),
      ),
    );
  }
}
