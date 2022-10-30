import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}