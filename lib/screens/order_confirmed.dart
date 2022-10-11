import 'package:e_commerce_app/screens/new_nav_bar.dart';
import 'package:e_commerce_app/widgets/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
class order_confirm_screen extends StatelessWidget {
  const order_confirm_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          color: primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Image.asset("assets/confirm_logo.png", height: 35.h, width: 60.w,),
              Padding(
                padding: EdgeInsets.only(top: 3.h),
                child: Text("Order Confirmed", style: GoogleFonts.poppins(
                  fontSize: 28.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),),
              ),
              Text("Thank you for your order", style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
              ),),
              Text("Your Order number is 97997", style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
              ),),

              GestureDetector(
                onTap: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Homepage()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Container(
                    height: 7.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.sp)
                    ),
                    child: Center(child: Text("Your Order", style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new_nav_bar()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Container(
                    height: 7.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.sp)
                    ),
                    child: Center(child: Text("Continue Shopping", style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
