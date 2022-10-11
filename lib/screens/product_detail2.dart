import 'package:e_commerce_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'new_nav_bar.dart';
class productdetail2_screen extends StatefulWidget {
  const productdetail2_screen({Key? key}) : super(key: key);

  @override
  State<productdetail2_screen> createState() => _productdetail2_screenState();
}

class _productdetail2_screenState extends State<productdetail2_screen> {
  int _itemCounts = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.grey[300],
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.close, size: 24.sp, color: Colors.black,),
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: Stack(
                    children: [
                      Container(
                        height: 85.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Material(
                                elevation: 0,
                                shadowColor: Colors.grey,
                                borderRadius: BorderRadius.circular(10.sp),
                                child: Container(
                                  height: 15.h,
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
                                          height: 20.h,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2.h),
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
                            Padding(
                              padding:  EdgeInsets.only(left: 7.w),
                              child: Text("Product", style: GoogleFonts.poppins(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600
                              ),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Container(
                                height: 16.h,
                                width: MediaQuery.of(context).size.width,
                                // color: Colors.red[200],
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.only(left: 3.w , right: 2.w),
                                        child: Container(
                                          height: 30.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.sp),
                                          ),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(10.sp),
                                                  child: Image.asset('assets/t_shirt.jpg',
                                                    fit: BoxFit.fitWidth,
                                                    width: 80.w,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Availability", style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp
                                      ),),
                                      Text("In Stock", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.sp
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Product Type", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp
                                      ),),
                                      Text("School Bag", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.sp
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Product Code", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp
                                      ),),
                                      Text("BSAM-722", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.sp
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Color", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp
                                      ),),
                                      Text("White", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.sp
                                      ),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 6.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.w, top: 2.h),
                                    child: Container(
                                      height: 8.h,
                                      width: 31.39.w,

                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 8.h,
                                            width: 10.w,
                                            decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.sp), bottomLeft: Radius.circular(15.sp))
                                            ),
                                            child: IconButton(
                                                onPressed: () => setState(
                                                      () => _itemCounts != 0
                                                      ? _itemCounts--
                                                      : _itemCounts,
                                                ),
                                                icon: Icon(Icons.remove,
                                                    size: 16.sp)),
                                          ),
                                          Container(
                                            height: 8.h,
                                            width: 10.w,
                                            decoration: BoxDecoration(
                                              // borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                                              border: Border.symmetric(horizontal: BorderSide(
                                                width: 0.5,
                                                color: Colors.black45,
                                              ))
                                            ),
                                            child: Center(
                                              child: Text(
                                                _itemCounts.toString(),
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16.sp,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 8.h,
                                            width: 10.w,
                                            decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(15.sp), bottomRight: Radius.circular(15.sp))
                                            ),
                                            child: IconButton(
                                                onPressed: () => setState(
                                                        () => _itemCounts++),
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 16.sp,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new_nav_bar()));
                              },
                              child: Padding(
                                padding: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
                                child: Container(
                                  height: 7.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(10.sp)
                                  ),
                                  child: Center(child: Text("Add to Cart", style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
                              child: Container(
                                height: 7.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10.sp)
                                ),
                                child: Center(child: Text("Buy", style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
