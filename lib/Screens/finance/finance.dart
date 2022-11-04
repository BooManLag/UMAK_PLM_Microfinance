import 'package:flutter/material.dart';
import '../../controllers/transaction_controller.dart';
import '../../widgets/transaction_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'addFunction.dart';
import 'financeCard.dart';
import 'financeAdd.dart';
import 'financeTransaction.dart';

class AccessTotal{
  static double total = 0.0;
}

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
  final TransactionController transactionController = TransactionController();
  static List<double> incomes = [];
  static List<double> expenses = [];
  late double totalIncome = incomes.sum;
  late double totalExpense = expenses.sum;
  late double total = totalIncome - totalExpense;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: GestureDetector(
          onTap: (){
            setState(() {
              totalIncome = incomes.sum;
              totalExpense = expenses.sum;
              total = totalIncome - totalExpense;
              AccessTotal.total = total;
            });
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0.w,10.0.h,10.0.w,0.0.h),
            child: Column(
              children: [
                MoneyCard(
                  balance: total.toString(),
                  income: totalIncome.toString(),
                  expenses: totalExpense.toString(),
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
                                      return Center(
                                        child: Text(
                                          'No Transactions Yet',
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700
                                          ),
                                        ),
                                      );
                                    }
                                    return ListView.builder(
                                        itemCount: transactions.length,
                                        itemBuilder: (context, index) {
                                          for(int i = 0; i < transactions.length; i++){
                                            if(incomes.contains(double.parse(transactions[index].amount)) || expenses.contains(double.parse(transactions[index].amount))){
                                              continue;
                                            }else if(transactions[index].classification == 'income'){
                                              incomes.add(double.parse(transactions[index].amount));
                                            }else{
                                              expenses.add(double.parse(transactions[index].amount));
                                            }
                                          }
                                          return TransWidget(
                                            transaction: transactions[index],
                                            onTap: () async {
                                              await Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddTransactionScreen(
                                                        action: transactionController
                                                            .deleteTransaction,
                                                        deleteTrans: transactions[index],
                                                      ),
                                                ),
                                              );
                                              setState(() {});
                                            },
                                          );
                                        }
                                    );
                                  }
                                  if (snapshot.hasError) {
                                    return Center(
                                      child: Text(
                                        "An error has occurred ${snapshot.error}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700
                                        ),
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
        ),
      ),
    );
  }
}
