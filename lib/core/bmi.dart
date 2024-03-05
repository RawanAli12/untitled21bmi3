import 'dart:math';


import 'package:flutter/material.dart';

class Bmi
{
    double? bmiIndex ;
    void calculateBM( int weight , double height)
    {
        print('weight is $weight');
        print('height is $height');

        bmiIndex= weight / pow(height/ 100,2);
    }

    String getStatue()
    {
        if(bmiIndex! > 25)
        {
            return'Over weight';
        }
        else if(bmiIndex!<18.5){
            return'under weight';

        }
        else {
            return'Normal';
        }

    }

    Color getColor()
    {
        if(bmiIndex! > 25)
        {
            return Colors.deepOrange ;
        }
        else if(bmiIndex!<18.5){
            return Colors.red;

        }
        else {
            return Colors.green;
        }

    }
    String getAdvice()
    {
        if(bmiIndex! > 25)
        {
            return' you have Over weight,';
        }
        else if(bmiIndex!<18.5){
            return' you have under weight,';

        }
        else {
            return' you have a Normal body weight';
        }

    }
    String getAdviceBold()
    {
        if(bmiIndex! > 25)
        {
            return' Work Hard!';
        }
        else if(bmiIndex!<18.5){
            return'Please Eat More! ';

        }
        else {
            return' Good job!';
        }

    }
}

