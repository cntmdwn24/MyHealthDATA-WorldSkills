import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;
  final String suffixText;
  final controller;

  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.controller,
    this.suffixText = '',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 50,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          suffixText: suffixText,
          suffixStyle: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w500,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.grey.shade500,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: Color(0xffFAFAFA),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
