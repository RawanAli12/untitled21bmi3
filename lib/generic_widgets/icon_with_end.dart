import 'package:flutter/material.dart';

class IconWithend extends StatelessWidget {
  final String text1;
  final String number;
  final Function onPressed1;
  final Function onPressed2;


  const IconWithend({
    required this.text1,
    required this.number,
    required this.onPressed1,
    required this.onPressed2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1,style: TextStyle(
            color: Colors.grey,
            fontSize: 20
        ),),
        Text(number,style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor:Colors.black26.withOpacity(0.1),
              child: IconButton(onPressed: (){onPressed1();}, icon:  Icon(Icons.remove,color: Colors.white,
                size: 30,),),
            ),



            CircleAvatar(radius: 24,
              backgroundColor: Colors.black26.withOpacity(0.1),
              child: IconButton(onPressed: (){onPressed2();}, icon: Icon(Icons.add,
                size: 30,
                color: Colors.white,) ),
            ),


          ],
        ),
      ],
    );
  }
}