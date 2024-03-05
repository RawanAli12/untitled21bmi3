import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled21bmi/pages/bmi_resuit_scrren.dart';


import '../generic_widgets/custom_container.dart';
import '../generic_widgets/icon_with_end.dart';
import '../generic_widgets/icon_with_text.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
 double height=155;
 //Gender? usegender;
 int weight=74;
 int age =19;
 bool inMale=true;
 Color colorFemale =Colors.black26.withOpacity(0.2);
 Color colorMale =Colors.black26.withOpacity(0.2);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:

          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(


                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(

                              onTap: (){
                                setState(() {
                                  inMale=true;


                                });
                              },
                              child: CustomContainer(

                                color: inMale ? Colors.black26.withOpacity(0.2): Colors.grey,

                                child: IconWithText(icon: Icons.male,
                                text: 'MALE',),


                              ),
                            ),

                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                inMale=false;

                              setState(() {

                                    });
                              },
                              child: CustomContainer(
                                color: !inMale ? Colors.black26.withOpacity(0.2): Colors.grey,
                                child: IconWithText(icon: Icons.female,
                                  text: 'FEMALE',),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),


                      Expanded(

                        child: Container(
                          color:  Colors.black26.withOpacity(0.2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('HEIGHT',style:TextStyle(
                           color: Colors.grey,
                            fontSize: 20,

                           ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.ideographic,//احرف انكليزي او فرنسي  التانية لل احرف الصيني غير مفهومة


                                children: [
                                  Text('${height.floor()}',style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),),
                                  Text('CM',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,


                                  ),),
                                ],
                              ),
                              SliderTheme(
                                data:SliderThemeData(
                                  thumbColor: Colors.red,
                                  activeTrackColor: Colors.white,
                                  trackHeight: 0.5,
                                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                                  overlayColor: Colors.grey[300],
                                  overlayShape: RoundSliderOverlayShape(overlayRadius: 25)




                                ) ,
                                child: Slider(value: height, onChanged:
                                    (value)
                                {
                                  setState(() {
                                    height = value;
                                  });
                                },
                                  min: 100,
                                  max: 300,

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Expanded(
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [

                            Expanded(
                              child: CustomContainer(
                                color: Colors.black26.withOpacity(0.2),
                                child: IconWithend(text1: 'WEIGHT',
                                  number: '${weight.floor()}',
                                onPressed1:()
                                {setState(() {
                                 // weight--;
                                  if(weight>40)weight--;

                                });

                                } ,
                                onPressed2: ()
                                {
                                  setState(() {
                                   // weight++;
                                    if(weight<150) weight++;

                                  });

                                },)
                              ),
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                              child: CustomContainer(
                                color: Colors.black26.withOpacity(0.2),
                                  child: IconWithend(
                                    text1: 'AGE',
                                    number: '${age.floor()}',
                                  onPressed1:()
                                  { setState(() {
                                    //age--;
                                    if(age>15)age--;

                                  });

                                  } ,
                                  onPressed2: ()
                                  { setState(() {
                                    //age++;
                                    if(age<100)age++;
                                  });

                                  },),
                              ),
                            ),
                          ],

                        ),
                      ),

                    ],
                  ),
                ),
              ),
              MaterialButton(onPressed: ()
              {

                setState(() {



                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResuit(
                        age: age,

                        height: height,
                        weight: weight,
                        //gender: userGender ?? Gender.male,
                      )),);

                });
              },
                color: Colors.red,
                minWidth: 500,
                height: 70,

                child: Text('CALCULATE YOUR BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),),




              ),

            ],
          ),




    );
  }
}





