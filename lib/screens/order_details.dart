import 'package:e_commerce_app/widgets/order_box.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_commerce_app/const/colors.dart';

import '../widgets/card_detail.dart';
class order_detail extends StatefulWidget {
  const order_detail({Key? key}) : super(key: key);

  @override
  State<order_detail> createState() => _order_detailState();
}
enum payment_method {credit_card, cash_on_delivery}
class _order_detailState extends State<order_detail> {
  payment_method _payment_method = payment_method.cash_on_delivery;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order Details", style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 26.sp,
                color: Colors.black
              ),),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Center(
                  child: Material(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10.sp),
                    child: Container(
                      height: 17.h,
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
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: Material(
                  elevation: 1,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10.sp),
                  child: Container(
                    height: 16.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.sp,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("SUBTOTAL", style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400
                              ),),
                              Text("SHIPPING COST", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400
                              ),),
                              Text("DISCOUNT", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400
                              ),),
                              Text("GRAND TOTAL", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("\$40.00", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600
                              ),),
                              Text("\$5.00", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600
                              ),),
                              Text("\$00.00", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600
                              ),),
                              Text("\$45.00", style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h),
                child: Material(
                  elevation: 1,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10.sp),
                  child: Container(
                    height: 21.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.sp,),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("PAYMENT METHOD", style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                              ),),
                              Text("ADD CARD", style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.credit_card_outlined),
                              Text("Credit Card/ Debit Card", style: GoogleFonts.poppins(
                                fontSize: 11.sp
                              ),),
                              Radio<payment_method>(
                                fillColor: MaterialStateColor.resolveWith((states) => primaryColor),
                                value: payment_method.credit_card,
                                groupValue: _payment_method,
                                onChanged: (value){
                                  setState(() {
                                    _payment_method = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.payments_outlined),
                              Text("Cash on Delivery            ", style: GoogleFonts.poppins(
                                  fontSize: 11.sp
                              ),),
                              Radio<payment_method>(
                                fillColor: MaterialStateColor.resolveWith((states) => primaryColor),
                                value: payment_method.cash_on_delivery,
                                groupValue: _payment_method,
                                onChanged: (value){
                                  setState(() {
                                    _payment_method = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                child: Material(
                  elevation: 1,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(10.sp),
                  child: Container(
                    height: 14.5.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 5.0.w, top: 6.sp, bottom: 0.sp, right: 10.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 70.w,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("DELIVERY ADDRESS", style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.h),
                                    child: Text(
                                        '''House no 45, St# 5, Johar Town 74 iv Chamber road Lahore 400 Pakistan 090078601''',
                                        // overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        softWrap: true,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12.sp, fontWeight: FontWeight.w500)),
                                  )
                                ]),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              InkWell(
                  onTap: (){
                    cardDialog(context);
                  },
                child: Padding(
                  padding: EdgeInsets.only(top: 0.h),
                  child: Center(
                    child: Container(
                      height: 7.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Center(child: Text("Proceed to Confirm", style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total (2 item) :", style: GoogleFonts.poppins(
                      color: Colors.black45,
                      fontSize: 14.sp,
                    ),),
                    Text("\$40", style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),)
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
