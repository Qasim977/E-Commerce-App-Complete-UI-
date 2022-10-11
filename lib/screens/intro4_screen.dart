import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/login_signup.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
class intro_4 extends StatefulWidget {
  const intro_4({Key? key}) : super(key: key);

  @override
  State<intro_4> createState() => _intro_4State();
}

class _intro_4State extends State<intro_4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 55.h,
              width: 100.w,
              child: Stack(
                children: [
                  Container(
                    height:51.h,
                    width: 100.w,
                    child: Image.asset("assets/intro 3.jpg",  fit: BoxFit.fitWidth,),
                  ),
                  Positioned(
                    top: 46.h,
                    left: 40.w,
                    child: Container(
                      height: 9.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100.sp),
                        border: Border.all(color: Colors.black, width: 1.sp),
                      ),
                      child: Center(
                        child: Image.asset("assets/Circle.png", height: 5.h,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text("DISCOUNTS ON EVERYTHING", style: GoogleFonts.poppins(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Center(
                    child: Text("Get promo codes and discounts on", style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                    ),),
                  ),
                ),
                Center(
                  child: Text("your favourite brands.", style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65.w, top: 3.h),
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor:  primaryColor,
                    foregroundColor: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> login_signup()));
                    },
                    child: Icon(Icons.arrow_forward, color: Colors.white,),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
