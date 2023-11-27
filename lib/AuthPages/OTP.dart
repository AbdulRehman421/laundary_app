import 'package:flutter/material.dart';
import 'package:laundary_app/AuthPages/Register.dart';
import 'package:laundary_app/HomePage.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatelessWidget {
   OtpPage({super.key});

  @override
  TextEditingController phoneController = TextEditingController();

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Verification Code', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          centerTitle: true ,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text('      OTP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Color(0XFFCE1567)),),
              Text('        OTP has seen to your registed phone number. Please\n        verify',style: TextStyle(fontSize: 13),),
              Container(
                padding: EdgeInsets.only(top: 30,left: 30, bottom: 30 ,right: 40),
                child: Pinput(
                  length: 6,
                  // defaultPinTheme: defaultPinTheme,
                  // focusedPinTheme: focusedPinTheme,
                  // submittedPinTheme: submittedPinTheme,
                
                  controller: phoneController,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?'),
                  Text('  Sign up now',style: TextStyle(
                      color: Color(0XFFCE1567)
                  ),),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 322,
                height: 42,
                margin: EdgeInsets.only(left: 35),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0XFFCE1567)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    }, child: Align(
                  alignment: Alignment.center,
                  child: Text('Verify',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }



}
