import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
          Image.asset('assets/images/Frame3.png'),
          SizedBox(
            height: 10,
          ),
          Text('Professional Walk', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          SizedBox(
            height: 5,
          ),
          Text('Lorem ipsum dolor, sit amet consectetur adipisicing\nelit. Consectetur iusto, velit? Voluptates ex molestias\nexcepturi, dolorum magni qui eius non, repellat id\nconsequuntur, eos magnam sit fuga? Delectus error,\nbeatae.',
          ),



        ],
      ),
    );  }
}
