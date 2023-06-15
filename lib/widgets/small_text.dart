import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  SmallText({
    super.key,
    this.color = Colors.black,
    required this.text,
    this.size = 12,
    this.height=1.1
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontWeight: FontWeight.w400,height: height, fontSize: size),
    );
  }
}
