import 'package:flutter/material.dart';
import 'financeTransaction.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTransactionScreen extends StatefulWidget {
  final Function(Transactions) action;
  final Transactions? deleteTrans;
  const AddTransactionScreen({
    super.key,
    required this.action,
    this.deleteTrans
  });

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  late final TextEditingController name;
  late final TextEditingController amount;
  late final TextEditingController classification;

  @override
  void initState() {
    name = TextEditingController(text: widget.deleteTrans?.transactionName);
    amount = TextEditingController(text: widget.deleteTrans?.amount);
    classification = TextEditingController(text: widget.deleteTrans?.classification);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final text = widget.deleteTrans != null ? 'Delete Transaction' : 'Add Transaction';
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: REdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  key: UniqueKey(),
                  keyboardType: TextInputType.text,
                  controller: name,
                  enabled: widget.deleteTrans == null,
                  decoration: InputDecoration(
                    labelText: 'Transaction Name',
                    hintText: 'Drinks',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: Color(0xFFEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  REdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  key: UniqueKey(),
                  keyboardType: TextInputType.text,
                  controller: amount,
                  enabled: widget.deleteTrans == null,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    hintText: '100',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: Color(0xFFEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsets.only(bottom: 20.0),
                child: TextFormField(
                  key: UniqueKey(),
                  keyboardType: TextInputType.text,
                  controller: classification,
                  enabled: widget.deleteTrans == null,
                  decoration: InputDecoration(
                    labelText: 'Classification',
                    hintText: 'expense or income',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: Color(0xFFEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () async {
                    if (name.text.isEmpty || amount.text.isEmpty || classification.text.isEmpty) {
                      return;
                    }
                    final note = widget.deleteTrans ??
                        Transactions(transactionName: name.text, amount: amount.text, classification: classification.text,);
                    await widget.action(note);
                    if (mounted) Navigator.pop(context);
                  },
                  child: Text(text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

