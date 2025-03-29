import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xff393939),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'NotoSansKR',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
