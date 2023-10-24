import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'expense_category_page.dart';
import 'circular_progress.dart';

class TotalExpensePage extends StatefulWidget {
  const TotalExpensePage({super.key});

  @override
  State<TotalExpensePage> createState() => _TotalExpensePageState();
}

class _TotalExpensePageState extends State<TotalExpensePage>
    with SingleTickerProviderStateMixin {
  double maxProgress = 95;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 252),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const ExpenseCategoryPage()),
            icon: const Icon(
              Icons.calendar_month_sharp,
              color: Color(0xFFfbfbff),
            ),
          ),
          IconButton(
            onPressed: () => Get.toNamed(""),
            icon: const Icon(
              Icons.add,
            ),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat",
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(seconds: 3),
          tween: Tween<double>(begin: 0, end: maxProgress),
          builder: (context, double value, child) {
            return CustomPaint(
              foregroundPainter: CircularProgress(
                currentProgress: value,
                strokeWidth: 13.w,
                radius: 100,
                color: Colors.blue,
              ),
              child: SizedBox(
                height: 300.h,
                width: 300.h,
                child: Center(
                  child: Text(
                    "${value.toInt()} %",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Montserrat",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
