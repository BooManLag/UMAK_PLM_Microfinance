import 'package:hive_flutter/hive_flutter.dart';
import '../Screens/finance/financeTransaction.dart';
import '../services/store.dart';

class HiveInjector {
  static Future<void> setup() async{
    await Hive.initFlutter();
    _registerAdapter();
    await Hive.openBox(Store.storeBox);
  }

  static void _registerAdapter(){
    Hive.registerAdapter(TransactionsAdapter());
  }
}
