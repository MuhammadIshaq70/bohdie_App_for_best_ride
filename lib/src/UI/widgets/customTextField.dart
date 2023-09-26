import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  var hinttext;
  var icon;
  CustomTextField({super.key, this.hinttext, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hinttext,
          prefixIcon: icon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
