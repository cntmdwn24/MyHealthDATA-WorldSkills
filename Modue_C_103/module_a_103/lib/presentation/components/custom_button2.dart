import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool isOutline;

  const CustomButton2({
    super.key,
    required this.onTap,
    required this.text,
    this.isOutline = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 280,
        height: 45,
        decoration: BoxDecoration(
          color: isOutline ? Colors.white : Colors.black,
          border: Border.all(
            width: isOutline ? 1.5 : 0.001,
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(2),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isOutline ? Colors.black : Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
