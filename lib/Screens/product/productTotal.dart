import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  final double total;

  Total({required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total: ₱${total}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            decoration: BoxDecoration(
              color: Colors.teal[800],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: InkWell(
              onTap: (){},
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Go To List',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
