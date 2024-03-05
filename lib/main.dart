
import 'package:flutter/material.dart';
import 'package:untitled21bmi/pages/bmi_resuit_scrren.dart';
import 'package:untitled21bmi/pages/bmi_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}