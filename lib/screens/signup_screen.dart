import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_code_picker/country_code_picker.dart';
class signup_screen extends StatefulWidget {
  const signup_screen({Key? key}) : super(key: key);

  @override
  State<signup_screen> createState() => _signup_screenState();
}
final TextEditingController controller = TextEditingController();
class _signup_screenState extends State<signup_screen> {
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 1.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("SIGN UP",style: GoogleFonts.poppins(
                    fontSize: 26.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),),
                  Padding(
                    padding: EdgeInsets.only(top: 4.h, bottom: 3.h),
                    child: Center(child: Image.asset("assets/Circle.png", height: 20.h,width: 40.w,)),
                  ),
                  Text("Welcome", style: GoogleFonts.poppins(
                    color: Colors.black45,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400
                  ),),
                  Container(
                    height: 10.h,
                    child: Center(
                      child: Form(
                        key: _formKey,
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
                            prefixIcon: CountryCodePicker(
                              onChanged: print,
                              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              initialSelection: 'PK',
                              showDropDownButton: true,
                              padding: EdgeInsets.zero,
                              favorite: ['+92','PK'],
                              // optional. Shows only country name and flag
                              showCountryOnly: false,
                              // optional. Shows only country name and flag when popup is closed.
                              showOnlyCountryWhenClosed: false,
                              // optional. aligns the flag and the Text left
                              alignLeft: false,
                            ),
                            contentPadding: EdgeInsets.only(bottom: 0, left: 0, top: 10.sp),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Please enter the phone number';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      // if (_formKey.currentState!.validate())
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> otp_screen()));
                    },
                    child: Container(
                      height: 7.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Center(child: Text("Send OTP", style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 1.sp,
                          width: 30.w,
                          color: Colors.grey,
                        ),
                        Text("OR", style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.grey
                        ),),
                        Container(
                          height: 1.sp,
                          width: 30.w,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.2, color: Colors.black),
                        borderRadius: BorderRadius.circular(10.sp)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/apple.png"),
                        Text("Continue with Apple", style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.black
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 7.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 0.2, color: Colors.black),
                              borderRadius: BorderRadius.circular(10.sp)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/fb.png"),
                              Text("Facebook", style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  color: Colors.black
                              ),),
                            ],
                          ),
                        ),
                        Container(
                          height: 7.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 0.2, color: Colors.black),
                              borderRadius: BorderRadius.circular(10.sp)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/google.png", height: 6.h,width: 6.w,),
                              Text("Google", style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  color: Colors.black
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Center(
                      child: RichText(text: TextSpan(
                        text: "Have an account?",
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          color: Colors.black
                        ),
                        children: [
                          TextSpan(
                          text: " LOGIN",
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
                  Padding(
                    padding: EdgeInsets.only(top: 7.h),
                    child: Center(
                      child: Text("By Continuing, you agree to our", style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: Colors.black,
                      ),),
                    ),
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Terms of Service",
                        style: GoogleFonts.poppins(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          decoration: TextDecoration.underline
                        ),
                        children: [
                          TextSpan(
                            text: " . ",
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            )
                          ),
                      TextSpan(
                          text: "Privacy Policy",
                          style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              color: Colors.black,
                              decoration: TextDecoration.underline
                          )
                      ),
                          TextSpan(
                              text: " . ",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              )
                          ),
                          TextSpan(
                              text: "Content Policy",
                              style: GoogleFonts.poppins(
                                  fontSize: 11.sp,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline
                              )
                          ),
                        ]
                      ),
                    )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
