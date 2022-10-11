import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/intro2_screen.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'new_nav_bar.dart';

class login_signup extends StatefulWidget {
  const login_signup({Key? key}) : super(key: key);

  @override
  State<login_signup> createState() => _login_signupState();
}

class _login_signupState extends State<login_signup> {
  String? userId = null;

  get_token() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userId = prefs.getString("UID");
    // print("The sahre-pref token is ${JWDToken}");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: 100.h,
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset("assets/login_signup_wallpaper.jpg", fit: BoxFit.fitHeight,height: 95.h,
                      color: Colors.black.withOpacity(0.5),colorBlendMode: BlendMode.darken,),
                    Positioned(
                      top: 74.h,
                      left: 5.w,
                      child: GestureDetector(
                        onTap: (){
                          print(userId);
                          if(userId == null){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login_screen()));
                          }else
                            {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> new_nav_bar() ));
                            }
                        },
                        child: Container(
                          height: 7.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10.sp)
                          ),
                          child: Center(child: Text("LOG IN", style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 85.h,
                      left: 5.w,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> signup_screen()));
                        },
                        child: Container(
                          height: 7.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10.sp)
                          ),
                          child: Center(child: Text("SIGN UP", style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
