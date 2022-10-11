import 'package:e_commerce_app/screens/order_confirmed.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/colors.dart';

void cardDialog(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext ctx){
        return StatefulBuilder(builder: (context, setState){
        return Center(
          child: Container(
            height: 88.h,
            width: 90.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.sp)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 2.w,
                        ),
                        Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.clear,
                                size: 23.sp,
                              )),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        TextWidget(
                            text: 'Add Card',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600)
                      ],
                    ),
                    SizedBox(height: 1.h,),
                    Image.asset("assets/card.png", width: 80.w, fit: BoxFit.fitWidth,),
                    Padding(
                      padding:  EdgeInsets.only(top: 1.h),
                      child: Text("Card Name*", style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14.sp,
                        decoration: TextDecoration.none
                      )),
                    ),
                    Container(
                      height: 10.h,
                      child: Center(
                        child: Material(
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
                              hintText: 'Usman',
                              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter card name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 1.h),
                      child: Text("Card Number*", style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14.sp,
                          decoration: TextDecoration.none
                      )),
                    ),
                    Container(
                      height: 10.h,
                      child: Center(
                        child: Material(
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
                              hintText: '0123 1589437528 9808',
                              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please enter card number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 1.h),
                              child: Text("Expiry Date*", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  decoration: TextDecoration.none
                              )),
                            ),
                            Container(
                              height: 10.h,
                              width: 30.w,
                              child: Center(
                                child: Material(
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
                                      hintText: '09/22',
                                      hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                                    ),
                                    validator: (text) {
                                      if (text == null || text.isEmpty) {
                                        return 'Please enter card number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 1.h),
                              child: Text("CVC/CVV*", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  decoration: TextDecoration.none
                              )),
                            ),
                            Container(
                              height: 10.h,
                              width: 30.w,
                              child: Center(
                                child: Material(
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
                                      hintText: '098',
                                      hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                                    ),
                                    validator: (text) {
                                      if (text == null || text.isEmpty) {
                                        return 'Please enter card number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> order_confirm_screen()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 3.h),
                        child: Container(
                          height: 7.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10.sp)
                          ),
                          child: Center(child: Text("Add Card", style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.white,
                            decoration: TextDecoration.none
                          ),)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
        },
        );
      }
  );
}