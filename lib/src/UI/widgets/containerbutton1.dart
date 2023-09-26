import 'package:flutter/material.dart';

class containerbutton1 extends StatelessWidget {
  var text;
  containerbutton1({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
