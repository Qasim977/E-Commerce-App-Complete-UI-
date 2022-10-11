import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/intro2_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class intro_1 extends StatefulWidget {
  const  intro_1({Key? key}) : super(key: key);

  @override
  State<intro_1> createState() => _intro_1State();
}

class _intro_1State extends State<intro_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              child: Image.asset("assets/pic 1 get started.jpg", fit: BoxFit.fill,
                color: Colors.black.withOpacity(0.5),colorBlendMode: BlendMode.darken,),
            ),
            Positioned(
              top: 85.h,
              left: 5.w,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> intro_2()));
                },
                child: Container(
                  height: 7.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10.sp)
                  ),
                  child: Center(child: Text("Get Started", style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
