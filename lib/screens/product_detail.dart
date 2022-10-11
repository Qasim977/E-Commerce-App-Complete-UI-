import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/product_detail2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class product_detail extends StatefulWidget {
  const product_detail({Key? key}) : super(key: key);

  @override
  State<product_detail> createState() => _product_detailState();
}

class _product_detailState extends State<product_detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Padding(
            padding:  EdgeInsets.symmetric( vertical: 2.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 5.w),
                    child: Text("Bags", style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>productdetail2_screen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.h, left: 5.w, right: 5.w),
                      child: Center(
                        child: Material(
                          elevation: 2,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(10.sp),
                          child: Container(
                            height: 20.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.0.sp,
                                      top: 0.sp,
                                      bottom: 0.sp,
                                      right: 10.sp),
                                  child: Image.asset(
                                    'assets/t_shirt.jpg',
                                    width: 30.w,
                                    height: 18.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.h),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nike T-Shirts",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Vado Odella",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12.sp,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.7.h),
                                        child: Row(
                                          children: [
                                            Text(
                                              "\$40.00",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(left: 24.w),
                                              child: Icon(Icons.favorite, size: 18.sp,color: primaryColor,),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Center(
                      child: Material(
                        elevation: 2,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5.0.sp,
                                    top: 0.sp,
                                    bottom: 0.sp,
                                    right: 10.sp),
                                child: Image.asset(
                                  'assets/t_shirt.jpg',
                                  width: 30.w,
                                  height: 18.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nike T-Shirts",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Vado Odella",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.7.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            "\$40.00",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 24.w),
                                            child: Icon(Icons.favorite, size: 18.sp,color: Colors.black,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Center(
                      child: Material(
                        elevation: 2,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5.0.sp,
                                    top: 0.sp,
                                    bottom: 0.sp,
                                    right: 10.sp),
                                child: Image.asset(
                                  'assets/t_shirt.jpg',
                                  width: 30.w,
                                  height: 18.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nike T-Shirts",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Vado Odella",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.7.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            "\$40.00",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 24.w),
                                            child: Icon(Icons.favorite, size: 18.sp,color: Colors.black,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Center(
                      child: Material(
                        elevation: 2,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5.0.sp,
                                    top: 0.sp,
                                    bottom: 0.sp,
                                    right: 10.sp),
                                child: Image.asset(
                                  'assets/t_shirt.jpg',
                                  width: 30.w,
                                  height: 18.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nike T-Shirts",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Vado Odella",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.7.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            "\$40.00",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 24.w),
                                            child: Icon(Icons.favorite, size: 18.sp,color: Colors.black,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Center(
                      child: Material(
                        elevation: 2,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5.0.sp,
                                    top: 0.sp,
                                    bottom: 0.sp,
                                    right: 10.sp),
                                child: Image.asset(
                                  'assets/t_shirt.jpg',
                                  width: 30.w,
                                  height: 18.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nike T-Shirts",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Vado Odella",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.7.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            "\$40.00",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 24.w),
                                            child: Icon(Icons.favorite, size: 18.sp,color: Colors.black,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                    child: Center(
                      child: Material(
                        elevation: 2,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 5.0.sp,
                                    top: 0.sp,
                                    bottom: 0.sp,
                                    right: 10.sp),
                                child: Image.asset(
                                  'assets/t_shirt.jpg',
                                  width: 30.w,
                                  height: 18.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nike T-Shirts",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Vado Odella",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.7.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            "\$40.00",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(left: 24.w),
                                            child: Icon(Icons.favorite, size: 18.sp,color: Colors.black,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
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
