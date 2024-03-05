import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final  Widget child;
  final  Color color;
  final bool? widthinfinity;

  const CustomContainer({
    required this.child,
    required this.color,
    this.widthinfinity=false,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: color,
        //color: Colors.black26.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
     // width:  widthinfinity ?double.infinity :null,

    );
  }
}