import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddButton extends StatelessWidget {
  final function;

  AddButton({required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          margin: REdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
          height: 55.0.h,
          width: 55.0.w,
          decoration: BoxDecoration(
            color: Color(0xFFFBBB00),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '+',
              style: TextStyle(
                  color: Color(0xFFEEEEEE),
                  fontSize: 40.0.sp
              ),
            ),
          )
      ),
    );
  }
}