import 'package:flutter/material.dart';
import 'package:laundary_app/AuthPages/OTP.dart';
import 'package:laundary_app/AuthPages/Register.dart';
import 'package:laundary_app/AuthPages/change_password.dart';
import 'package:laundary_app/AuthPages/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 5,
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
                  height: size.height / 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    // inputFormatters: [maskFormatter],
                    // controller: _email,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      fillColor: Color(0XFFF3F3F3),
                        filled: true,
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                       ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      fillColor: Color(0XFFF3F3F3),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),

                      hintText: "Password",

                    ),

                  ),
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
                  },
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text('Forgot Password?      ', style: TextStyle(color: Color(0XFFCE1567), fontSize: 14, ) ,)),
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      height: 42,
                      margin: EdgeInsets.only(right: 10, left: 25),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0XFFCE1567)),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OtpPage(),));
                      }, child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Login',style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),),
                            Icon(Icons.arrow_forward_outlined,color: Colors.white,)
                          ],
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/touch.png'),
                  ],
                ),
                Divider(
                  height: 60,
                  endIndent: 25,
                  indent: 27,
                ),

                Text('You can also login with'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/OpenID_Facebook.png'),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                        },
                        child: Image.asset('assets/images/GOOGLE.png')),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?'),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,  MaterialPageRoute(builder: (context) => Register(),));
                      },
                      child: Text('  Sign up now',style: TextStyle(
                        color: Color(0XFFCE1567)
                      ),),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
    );
  }
}
