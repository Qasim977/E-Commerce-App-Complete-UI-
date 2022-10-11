import 'package:e_commerce_app/widgets/navigationbar.dart';
import 'package:e_commerce_app/widgets/update_name.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/colors.dart';

class personal_detail extends StatefulWidget {
  const personal_detail({Key? key}) : super(key: key);

  @override
  State<personal_detail> createState() => _personal_detailState();
}

class _personal_detailState extends State<personal_detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: 100.h,
            width: 100.w,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(12.0.sp),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20.sp,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.h),
                    child: Center(
                      child: Text("Personal Details", style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                      ),),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
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
                                suffixIcon: InkWell(
                                    onTap: () {
                                      update_nameDialog(context);
                                    },
                                    child: Icon(Icons.edit, color: Colors.black,)),
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
                                hintText: 'Usman',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter the name';
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
                                suffixIcon: Icon(Icons.edit, color: Colors.black,),
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
                                hintText: '09001234',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter number';
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
                                suffixIcon: Icon(Icons.edit, color: Colors.black,),
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
                                hintText: 'Usman@gmail.com',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter email';
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
                                suffixIcon: Icon(Icons.edit, color: Colors.black,),
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
                                hintText: 'Male/Female',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please select gender';
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
                                suffixIcon: Icon(Icons.edit, color: Colors.black,),
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
                                hintText: '03-03-1999',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter date of birth';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
