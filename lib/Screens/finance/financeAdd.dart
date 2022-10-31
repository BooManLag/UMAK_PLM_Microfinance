import 'package:flutter/material.dart';
import 'package:untitled/Screens/finance/financeTransaction.dart';
import 'financeTransaction.dart';

class AddButton extends StatelessWidget {
  final function;

  AddButton({required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
          height: 55.0,
          width: 55.0,
          decoration: BoxDecoration(
            color: Colors.teal[900],
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '+',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0
              ),
            ),
          )
      ),
    );
  }
}