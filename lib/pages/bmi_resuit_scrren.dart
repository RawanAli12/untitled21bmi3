import 'package:flutter/material.dart';

import '../core/bmi.dart';
import 'bmi_screen.dart';

class BmiResuit extends StatelessWidget {
  final int weight;
  final double height;
  final int age;
  // final Genger grnder;
  BmiResuit(
      {
        required this.age,
        required this.weight,
        //required this.grnder,
        required this.height,


      });

  Bmi bmi = Bmi();





  @override
  Widget build(BuildContext context) {
    bmi.calculateBM( weight, height);
    return Scaffold(
      //drawer: Drawer(),
      backgroundColor: Colors.blue[900],
      appBar: AppBar(


        backgroundColor: Colors.black26,
        title: Text('BMI Calculator',
          style: TextStyle(
              color: Colors.white
          ),),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.black,

      ),
      body: Column(


        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('Your Resuit',style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        //width: 300,
                        width: double.infinity,


                        color:  Colors.black26.withOpacity(0.2),
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Column(


                            children: [
                              Text(bmi.getStatue(),style: TextStyle(
                                color: bmi.getColor(),
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),),
                              SizedBox(height: 10,),
                              Text(bmi.bmiIndex!.toStringAsFixed(1),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 90,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(height: 40,),
                              Text('Normal BMI range:',style: TextStyle(
                                fontSize: 15,


                                color: Colors.grey,),),
                              SizedBox(height: 5,),
                              Text('18,5 -25 kg/m2',style: TextStyle(
                                color: Colors.white,


                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),),
                              SizedBox(height: 35,),
                              SizedBox(
                                width: 300,
                                child: Text.rich(
                                  textAlign: TextAlign.center,

                                     TextSpan(
                                        children: [
                                        TextSpan(
                                          text: bmi.getAdvice(),style: TextStyle(  color: Colors.white,
                                         fontSize: 15,),

                                        ),
                                          TextSpan(
                                            text: bmi.getAdviceBold(),style: TextStyle(
                                               color: Colors.white,
                                            fontSize: 15,),
                                          ),
                                        ],
                                    ),),

                              ),

                              SizedBox(height: 60,),
                              MaterialButton(onPressed: (){},
                                child: Text('SAVE RESULT',style: TextStyle(
                                  color: Colors.white,
                                ),),
                                color: Colors.black26.withOpacity(0),height: 40,
                                minWidth: 150,
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
          MaterialButton(onPressed: ()
          {
               Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(
                     builder: (context) => BmiScreen()),);



          },
            color: Colors.red,
            minWidth: 500,
            height: 70,

            child: Text('RE-CALCULATE YOUR BMI',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),),)
        ],
      ),


    );
  }
}