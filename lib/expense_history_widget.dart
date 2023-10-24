import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ExpenseHistoryWidget extends StatelessWidget {
  const ExpenseHistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "",
        style: TextStyle(
          color: Colors.black,
          fontFamily: "Montserrat",
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "",
        style: TextStyle(
          color: const Color(0xFFacb7d1),
          fontFamily: "Montserrat",
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Text(
        "",
        style: TextStyle(
          color: Colors.black,
          fontFamily: "Montserrat",
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
