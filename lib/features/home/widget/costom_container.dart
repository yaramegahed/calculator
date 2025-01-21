import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final Color conColor;
  final Color textColor;
  final void Function() onPressed;

  const CustomContainer(
      {super.key,
        required this.text,
        required this.conColor,
        required this.textColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (text != '0') {
      return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: conColor),
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: onPressed,
          child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: textColor, fontSize: 28, fontWeight: FontWeight.bold),
              )),
        ),
      );
    } else {
      return Container(
        height: 80,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff474747)),
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: InkWell(
            onTap: onPressed,
            child: Text(
              "0",
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
          ),
        ),
      );
    }
  }
}