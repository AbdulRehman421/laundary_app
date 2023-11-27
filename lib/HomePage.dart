import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('HomePage'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Text('Welcome to Momys Laundary',style: TextStyle(fontSize: 24),),
          Center(
              child: Image.asset('assets/images/Momy Laudry.png',height: 200,width: 400,)),
        ],
      ),
    );
  }
}
