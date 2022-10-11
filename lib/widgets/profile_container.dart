import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileContainer extends StatelessWidget {
  final String text;
  final Icon icon;

  const ProfileContainer({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 5,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.circular(10.sp),
        child: Container(
          height: 7.3.h,
          width: 80.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0.sp, right: 12.sp),
                child: icon,
              ),
              Container(
                child: Text(text,
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
