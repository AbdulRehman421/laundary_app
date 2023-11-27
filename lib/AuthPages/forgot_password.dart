import 'package:flutter/material.dart';
import 'package:laundary_app/AuthPages/change_password.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
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
              Text('      Forgot Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Color(0XFFCE1567)),),
              Text('         Lorem ipsum, dolor sit amet consectetur adipisicing.\n          elit',style: TextStyle(fontSize: 13),),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 322,
                  height: 42,
                  child: TextFormField(
                    // inputFormatters: [maskFormatter],
                    // controller: _email,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      fillColor: Color(0XFFF3F3F3),
                      filled: true,
                      hintText: "Enter Email",
                      hintStyle: TextStyle(
                          fontSize: 14
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),

              Container(
                width: 322,
                height: 42,
                margin: EdgeInsets.only(left: 32),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0XFFCE1567)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                    }, child: Align(
                  alignment: Alignment.center,
                  child: Text('Register',style: TextStyle(
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
