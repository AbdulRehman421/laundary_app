import 'package:flutter/material.dart';
import 'package:laundary_app/AuthPages/Login.dart';
import 'package:laundary_app/AuthPages/forgot_password.dart';
class Register extends StatelessWidget {
  const Register({super.key});

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
              Text('      Create a New Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Color(0XFFCE1567)),),
              Text('         Create an account so you can manage your personal\n          finances',style: TextStyle(fontSize: 13),),

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
                      hintText: "Enter Phone Number",
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
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
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
                      hintText: "Password",
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
                      hintText: "Confirm Password",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
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
