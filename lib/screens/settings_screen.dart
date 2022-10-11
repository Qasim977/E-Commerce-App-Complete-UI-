import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(
              height: 2.h,
            ),
            TextWidget(
                text: 'Settings', fontSize: 18.sp, fontWeight: FontWeight.w600),
            SizedBox(
              height: 5.h,
            ),
            Material(
              elevation: 2,
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.sp),
              child: Container(
                height: 42.h,
                width: 90.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Padding(
                  padding:
                      EdgeInsets.only( left: 20.sp, right: 20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Image.asset('assets/Vector.png'),
                        SizedBox(
                          width: 5.w,
                        ),
                        TextWidget(
                            text: 'Invite Friends',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500)
                      ]),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        color: Colors.black,
                        width: 80.w,
                        height: 0.8,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(children: [
                        Image.asset('assets/Vector (1).png'),
                        SizedBox(
                          width: 5.w,
                        ),
                        TextWidget(
                            text: 'Customer Support',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500)
                      ]),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        color: Colors.black,
                        width: 80.w,
                        height: 0.8,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(children: [
                        Image.asset('assets/Vector (2).png'),
                        SizedBox(
                          width: 5.w,
                        ),
                        TextWidget(
                            text: 'Rate our App',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500)
                      ]),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        color: Colors.black,
                        width: 80.w,
                        height: 0.8,
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(children: [
                        Icon(
                          Icons.edit_note_sharp,
                          size: 26.sp,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        TextWidget(
                            text: 'Make a Suggestion',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500)
                      ]),
                      SizedBox(
                        height: 1.3.h,
                      ),
                      Container(
                        color: Colors.black,
                        width: 80.w,
                        height: 0.8,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                          children: [
                          SizedBox(width: 0.8.w,),
                            Image.asset('assets/Vector (4).png'),
                            SizedBox(
                              width: 5.w,
                            ),
                            TextWidget(
                                text: 'Delete my Account',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500)
                          ]),
                      SizedBox(
                        height: 1.h,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
