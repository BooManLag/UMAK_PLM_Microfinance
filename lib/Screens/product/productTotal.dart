import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: REdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (widget.type) Text(
            'Total: ₱${widget.total}',
            style: TextStyle(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.w500
            ),
          ) else Padding(
            padding: REdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            child: Text(
                  'Total: ₱${widget.total}',
                  style: TextStyle(
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.w500
                  ),
            ),
          ),
          if (widget.type) Container(
            margin: REdgeInsets.only(right: 20),
            padding: REdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            decoration: BoxDecoration(
              color: Color(0xFFFBBB00),
              borderRadius: BorderRadius.circular(10.0),
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
                    color: Color(0xFFEEEEEE),
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
