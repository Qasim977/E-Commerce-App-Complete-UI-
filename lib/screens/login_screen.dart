import 'dart:convert';

import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'new_nav_bar.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String UID = '';
  final _formKey = GlobalKey<FormState>();

  Future SignIn_User(String email, String password) async{
      var map = new Map<String, dynamic>();
      map['__api_key__'] = 'hi,-its-eevee. I can do wonderful things in api creation.';
      map['email'] = email;
      map['password'] = password;
      http.Response response = await http.post(Uri.parse('http://ecommerce.api.mulum.pk/login_user.php'),
        body: map,
      );
      print(response.body);
      print(json.decode(response.body)['data']['user']['uid']);

      var uid = json.decode(response.body)['data']['user']['uid'];
      setState((){UID = uid;});
      await save_id();

  }

  save_id() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("UID", UID);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",style: GoogleFonts.poppins(
                  fontSize: 26.sp,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),),
                Padding(
                  padding: EdgeInsets.only(top: 4.h, bottom: 3.h),
                  child: Center(child: Image.asset("assets/Circle.png", height: 20.h,width: 40.w,)),
                ),
                Text("Welcome back", style: GoogleFonts.poppins(
                    color: Colors.black45,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400
                ),),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        height: 10.h,
                        child: Center(
                          child: TextFormField(
                            controller: email,
                            style: TextStyle(color: Colors.black,fontSize: 16.sp),
                            // textFieldController: controller,
                            // maxLength: 10,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,width:0.3.sp),
                                borderRadius: BorderRadius.circular(10.0.sp),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.5.sp,
                                  color: primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10.0.sp),
                              ),
                              contentPadding: EdgeInsets.only(bottom: 0, left: 3.w, top: 10.sp),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Username / Phone Number',
                              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter the username / phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 10.h,
                        child: Center(
                          child: TextFormField(
                            controller: password,
                            style: TextStyle(color: Colors.black,fontSize: 16.sp),
                            // textFieldController: controller,
                            // maxLength: 10,
                            keyboardType: TextInputType.text,
                            // keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,width:0.3.sp),
                                borderRadius: BorderRadius.circular(10.0.sp),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.5.sp,
                                  color: primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(10.0.sp),
                              ),
                              contentPadding: EdgeInsets.only(bottom: 0, left: 3.w, top: 10.sp),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter the password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    if (_formKey.currentState!.validate());
                    await SignIn_User(email.text, password.text);
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new_nav_bar()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 23.h),
                    child: Container(
                      height: 7.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Center(child: Text("LOGIN", style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> forget_password()));
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forget Password?", style: GoogleFonts.poppins(
                      color: Colors.black45,
                      fontSize: 14.sp,
                    ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Center(
                    child: RichText(text: TextSpan(
                        text: "Don't have an account?",
                        style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                            text: " SIGNUP",
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              color: primaryColor,
                            ),
                          )
                        ]
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
