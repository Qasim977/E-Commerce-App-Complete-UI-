import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderBox extends StatelessWidget {
  final bool forFavouriteScreen;

  const OrderBox({super.key, required this.forFavouriteScreen});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(10.sp),
      child: Container(
        height: 12.5.h,
        width: 90.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 5.0.sp, top: 6.sp, bottom: 6.sp, right: 10.sp),
              child: Image.asset(
                'assets/t_shirt.jpg',
                width: 65.sp,
                height: 65.sp,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    text: 'Nike T-Shirts',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600),
                TextWidget(
                    text: 'Vado Odelle',
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w300),
                SizedBox(
                  height: 1.8.h,
                ),
                TextWidget(
                    text: '\$40.00',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700)
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5.0.sp, bottom: 2.sp),
                  child: forFavouriteScreen
                      ? Icon(Icons.delete,color: primaryColor,)
                      : Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              color: Colors.green,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600),
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
