// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  TextEditingController? controller;
  String? hintText;
  IconData? prefixIcon;
  bool obscureText;

  TextFieldCustom({
    Key? key,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
