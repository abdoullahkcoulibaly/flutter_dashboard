import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_widget.dart';
import '/custom_app_bar.dart';

class ExpenseCategoryPage extends StatelessWidget {
  const ExpenseCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Catégory',
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                      left: 20.w, right: 20.w, top: 50.h, bottom: 20.h),
                  color: Colors.black,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          const Divider(thickness: 2, color: Color(0xFF5a74ea)),
                          SizedBox(height: 20.h),
                          const Divider(thickness: 2, color: Color(0xFF5a74ea)),
                          SizedBox(height: 20.h),
                          const Divider(thickness: 2, color: Color(0xFF5a74ea)),
                        ],
                      ),
                      Positioned(
                        top: 10.h,
                        child: Row(
                          children: [
                            SizedBox(width: 40.w),
                            BarChart(
                              color: const Color(0xFFe9c256),
                              height: 80.h,
                            ),
                            SizedBox(width: 40.w),
                            BarChart(
                              color: const Color(0xFF5be272),
                              height: 100.h,
                            ),
                            SizedBox(width: 40.w),
                            BarChart(
                              color: const Color(0xFFff6a6a),
                              height: 40.h,
                            ),
                            SizedBox(width: 40.w),
                            BarChart(
                              color: const Color(0xFFe9c256),
                              height: 30.h,
                            ),
                            SizedBox(width: 40.w),
                            BarChart(
                              color: const Color(0xFFe9c256),
                              height: 90.h,
                            ),
                            SizedBox(width: 40.w),
                            BarChart(
                              color: const Color(0xFFe9c256),
                              height: 80.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 280.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              children: [
                Row(
                  children: [
                    const CategoryWidget(
                      color: Color(0xFFffc043),
                      maxProgress: 80,
                      subTitle: "jan 30, 23:18",
                      title: "Food",
                      icon: Icons.lunch_dining,
                    ),
                    SizedBox(width: 20.w),
                    const CategoryWidget(
                      icon: Icons.directions_car_filled_rounded,
                      title: 'Transport',
                      color: Colors.black,
                      maxProgress: 30,
                      subTitle: "Jan 29, 20:04",
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    const CategoryWidget(
                      color: Color(0xFFff6a6a),
                      icon: Icons.bookmark_outlined,
                      maxProgress: 20,
                      subTitle: "Jan 27, 09:45",
                      title: "Bills",
                    ),
                    SizedBox(width: 20.w),
                    const CategoryWidget(
                      color: Color(0xFF00c922),
                      icon: Icons.flight_takeoff,
                      maxProgress: 60,
                      subTitle: "Jan 26, 11:37",
                      title: "Travel",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BarChart extends StatelessWidget {
  const BarChart({
    super.key,
    required this.color,
    required this.height,
  });
  final Color color;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.w,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          8.w,
        ),
      ),
    );
  }
}
