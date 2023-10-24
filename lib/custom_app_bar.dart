import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Color(0xFFfbfbff)),
      backgroundColor: Colors.black,
      title: Text(
        title,
        style: TextStyle(
          color: const Color(0xFFfbfbff),
          fontFamily: "Montserrat",
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
