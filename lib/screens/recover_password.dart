import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class recover_password extends StatefulWidget {
  const recover_password({Key? key}) : super(key: key);

  @override
  State<recover_password> createState() => _recover_passwordState();
}

class _recover_passwordState extends State<recover_password> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.h, bottom: 3.h),
                    child: Center(child: Image.asset("assets/Circle.png", height: 15.h,width: 30.w,)),
                  ),
                  Text("Recover Password", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: Colors.black,
                  ),),
                  Text("Set up you new password...", style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.black45,
                  ),),
                  Padding(
                    padding:  EdgeInsets.only(top: 8.h),
                    child: Form(
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
                                  hintText: 'New Password',
                                  hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Please enter the new password';
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
                                  hintText: 'Confirm New Password',
                                  hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Please enter the confirm new password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> login_screen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 28.h),
                      child: Container(
                        height: 7.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Center(child: Text("DONE", style: GoogleFonts.poppins(
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
      ),
    );
  }
}
