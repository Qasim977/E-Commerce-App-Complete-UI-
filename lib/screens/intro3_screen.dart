import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/intro4_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
class intro_3 extends StatefulWidget {
  const intro_3({Key? key}) : super(key: key);

  @override
  State<intro_3> createState() => _intro_3State();
}

class _intro_3State extends State<intro_3> {
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
              height: 65.h,
              width: 100.w,
              child: Stack(
                children: [
                  Container(
                    height:55.h,
                    width: 100.w,
                    child: Image.asset("assets/intro 2.jpg",  fit: BoxFit.fitHeight,),
                  ),
                  Positioned(
                    top: 50.h,
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
                  child: Text("BRANDS OF ALL KINDS", style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: Center(
                    child: Text("With online store buy any kind of", style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                    ),),
                  ),
                ),
                Center(
                  child: Text("branded items in one place.", style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65.w, top: 2.h),
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor:  primaryColor,
                    foregroundColor: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> intro_4()));
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
