import '../Screens/finance/financeTransaction.dart';
import '../services/store.dart';

class TransactionController{
  late final Store store;

  TransactionController(){
    store = Store();
  }

  Future<List<Transactions>?> getTransactions() async => List<Transactions>.from(
      await store.getValue<List<Transactions>?>(Store.transac, defaultValue: []) ?? []);

  Future<void> addTransaction(Transactions transaction) async{
    final List<Transactions> transactions = List<Transactions>.from(
      await store.getValue(Store.transac, defaultValue: []) ?? []);
    transactions.add(transaction);
    await store.setValue(Store.transac, transactions);
  }

  Future<void> deleteTransaction(Transactions transaction) async{
    final List<Transactions> transactions = List<Transactions>.from(
      await store.getValue(Store.transac, defaultValue: []) ?? []);
    transactions.remove(transaction);
    await store.setValue(Store.transac, transactions);
  }
}