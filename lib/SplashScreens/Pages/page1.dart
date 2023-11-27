import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 170,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/icon1.png'),
              SizedBox(width: 10,),
              Image.asset('assets/images/Momy Laudry.png'),

            ],
          ),
         SizedBox(
           height: 30,
         ),
         Image.asset('assets/images/Frame.png'),
          SizedBox(
            height: 10,
          ),
          Text('Perfect Equipment', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
          SizedBox(
            height: 5,
          ),
          Text('Lorem ipsum dolor, sit amet consectetur adipisicing\nelit. Consectetur iusto, velit? Voluptates ex molestias\nexcepturi, dolorum magni qui eius non, repellat id\nconsequuntur, eos magnam sit fuga? Delectus error,\nbeatae.'),



        ],
      ),
    );
  }
}
