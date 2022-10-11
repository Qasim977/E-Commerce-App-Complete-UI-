import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/recover_password.dart';
import 'package:e_commerce_app/screens/signup2_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class otp2_screen extends StatefulWidget {
  const otp2_screen({Key? key}) : super(key: key);

  @override
  State<otp2_screen> createState() => _otp2_screenState();
}

class _otp2_screenState extends State<otp2_screen> {
  final _formKey = GlobalKey<FormState>();
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
                Padding(
                  padding: EdgeInsets.only(top: 4.h, bottom: 3.h),
                  child: Center(child: Image.asset("assets/Circle.png", height: 15.h,width: 30.w,)),
                ),
                Center(child: Text("Enter OTP", style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("A one time passcode(OTP) is send to your", style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.black
                        ),),
                        Text("given email/phone number.", style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.black
                        ),),
                      ],
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        height: 10.h,
                        child: Center(
                          child: TextFormField(
                            style: TextStyle(color: Colors.black,fontSize: 16.sp),
                            // textFieldController: controller,
                            maxLength: 10,
                            keyboardType:
                            TextInputType.numberWithOptions(signed: true, decimal: true),
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
                              hintText: 'Enter OTP',
                              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter the OTP';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Container(
                    height: 7.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10.sp)
                    ),
                    child: Center(child: Text("RESEND", style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),)),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> recover_password()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Container(
                      height: 7.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Center(child: Text("NEXT", style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),)),
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
