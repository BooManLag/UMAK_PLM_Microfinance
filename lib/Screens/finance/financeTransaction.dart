import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'financeTransaction.g.dart';

@HiveType(typeId: 0)
class Transactions {
  @HiveField(0)
  String transactionName;
  @HiveField(1)
  String amount;
  @HiveField(2)
  String classification;

  Transactions({required this.transactionName, required this.amount, required this.classification});
}
