import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressBox extends StatelessWidget {
  // final bool forFavouriteScreen;

  // const OrderBox({super.key, required this.forFavouriteScreen});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(10.sp),
      child: Container(
        // height: 16.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: 5.0.sp, top: 6.sp, bottom: 6.sp, right: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70.w,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '''House no 45, St# 5, Johar Town 74 iv Chamber road Lahore 400 Pakistan 090078601''',
                          // overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          softWrap: true,
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp, fontWeight: FontWeight.w500))
                    ]),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(alignment: Alignment.topRight, child: Icon(Icons.edit)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Icon(
                    Icons.delete,
                    color: primaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
