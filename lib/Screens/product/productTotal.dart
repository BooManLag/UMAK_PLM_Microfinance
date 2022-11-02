import 'package:flutter/material.dart';

import 'productCart.dart';

class Total extends StatefulWidget {
  final double total;
  final bool type;

  Total({required this.total, required this.type});

  @override
  State<Total> createState() => _TotalState();
}

class _TotalState extends State<Total> {
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
          if (widget.type) Text(
            'Total: ₱${widget.total}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500
            ),
          ) else Padding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            child: Text(
                  'Total: ₱${widget.total}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500
                  ),
            ),
          ),
          if (widget.type) Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            decoration: BoxDecoration(
              color: Colors.teal[800],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => GoToCart()
                  ),
                );
              },
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
