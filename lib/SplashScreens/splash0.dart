import 'package:flutter/material.dart';
import 'package:laundary_app/AuthPages/Login.dart';
import 'package:laundary_app/HomePage.dart';
import 'package:laundary_app/SplashScreens/Pages/Page3.dart';
import 'package:laundary_app/SplashScreens/Pages/page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Pages/page1.dart';

class SplashScreen0 extends StatefulWidget {
   SplashScreen0({super.key});

  @override
  State<SplashScreen0> createState() => _SplashScreen0State();
}

class _SplashScreen0State extends State<SplashScreen0> {
  final pageController = PageController();
  final int pageCount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 620,
            width: double.infinity,
            child: PageView(
              controller: pageController,
              children: [
                Page1(),
                Page2(),
                Page3(),

              ],
            ),
          ),
          SizedBox(height: 10,),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: SwapEffect(
              activeDotColor: Color(0XFFCE1567),
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
          SizedBox(
            height: 160,
            // height: 100,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text('  Skip',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  },
                ),

                IconButton(
                    onPressed: () {
                        if (pageController.page == pageCount - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                          );
                        } else {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }
                    }, icon: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFFCE1567),

                    ),
                    child: Icon(Icons.arrow_forward_outlined, color: Colors.white,)))
              ],
            ),
          )
        ],
      ),


    );
  }
}
