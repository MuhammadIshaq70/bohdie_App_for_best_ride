import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerButton2 extends StatelessWidget {
  var color;
  var text;
  var icon;
  ContainerButton2({super.key, this.icon, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.sp,
      width: 380.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 60,
            color: Colors.white,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
