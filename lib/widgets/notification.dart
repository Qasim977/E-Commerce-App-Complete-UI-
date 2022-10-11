import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 5,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.circular(10.sp),
        child: Container(
          // height: 8.h,
          width: 90.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/bag.png',
                width: 50.sp,
                height: 45.sp,
              ),
              Expanded(
                child: Container(
                  child: Text(
                      'Get nike bag on discounted rate Daypack Backpack',
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp, fontWeight: FontWeight.w400)),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(5.sp),
                  child: TextWidget(
                      text: '11:05',
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w300))
            ],
          ),
        ),
      ),
    );
  }
}
