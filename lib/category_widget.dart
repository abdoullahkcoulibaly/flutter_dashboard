import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'circular_progress.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.color,
    required this.maxProgress,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final Color color;
  final double maxProgress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      width: 165.w,
      padding: EdgeInsets.only(left: 16.w, top: 20.h, bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
            color: Color(0xFFe8edf9),
          ),
          BoxShadow(
            blurRadius: 20,
            spreadRadius: -20,
            offset: Offset(0, 50),
            color: Color(0xFFe8edf9),
          ),
          BoxShadow(
            blurRadius: 60,
            spreadRadius: -30,
            offset: Offset(0, 30),
            color: Color(0xFFe8edf9),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TweenAnimationBuilder(
            duration: Duration(seconds: 3),
            tween: Tween<double>(begin: 0, end: maxProgress),
            builder: (context, double value, child) {
              return CustomPaint(
                foregroundPainter: CircularProgress(
                  currentProgress: value,
                  strokeWidth: 5.w,
                  radius: 30,
                  color: color,
                ),
                child: Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  width: 80.h,
                  height: 80.h,
                  // color: Colors.red,
                  child: Center(
                    child: Icon(
                      icon,
                      color: color,
                    ),
                  ),
                ),
              );
            },
          ),
          Spacer(),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Montserrat",
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: Color(0xFFacb7d1),
              fontFamily: "Montserrat",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
