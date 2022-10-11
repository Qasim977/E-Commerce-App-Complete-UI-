import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/intro3_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
class intro_2 extends StatefulWidget {
  const intro_2({Key? key}) : super(key: key);

  @override
  State<intro_2> createState() => _intro_2State();
}

class _intro_2State extends State<intro_2> {
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
              height: 62.h,
              width: 100.w,
              child: Stack(
                children: [
                  Container(
                    height:55.h,
                    width: 100.w,
                    child: Image.asset("assets/intro 1.jpg",  fit: BoxFit.fitWidth,),
                  ),
                  Positioned(
                    top: 4.h,
                    left: 77.w,
                    child: Container(
                      height: 4.h,
                      width: 16.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.sp)
                      ),
                      child: Center(
                        child: Text("Skip", style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.white
                        ),),
                      ),
                    ),
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text("MAKE YOUR OWN CHOICES", style: GoogleFonts.poppins(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Center(
                    child: Text("Purchase any kind of shopping", style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                    ),),
                  ),
                ),
                Center(
                  child: Text("with one touch of mobile.", style: GoogleFonts.poppins(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> intro_3()));
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
