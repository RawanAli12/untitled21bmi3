import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconWithText({
    required this.icon,
    required this.text,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon ,
          color: Colors.white,
          size: 100,),
        Text(text,style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),)

      ],
    );
  }
}