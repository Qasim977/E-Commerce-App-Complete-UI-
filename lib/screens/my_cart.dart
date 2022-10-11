import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/screens/order_details.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
class my_cart extends StatefulWidget {
  const my_cart({Key? key}) : super(key: key);

  @override
  State<my_cart> createState() => _my_cartState();
}

class _my_cartState extends State<my_cart> {
  int _itemCounts = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "My Cart",
                style: GoogleFonts.poppins(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                ),
              )),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Center(
                  child: Material(
                    elevation: 5,
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
                                        padding: EdgeInsets.only(left: 4.w),
                                        child: Container(
                                          height: 4.5.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                  onPressed: () => setState(
                                                        () => _itemCounts != 0
                                                            ? _itemCounts--
                                                            : _itemCounts,
                                                      ),
                                                  icon: Icon(Icons.remove,
                                                      size: 16.sp)),
                                              Text(
                                                _itemCounts.toString(),
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16.sp,
                                                    color: Colors.black),
                                              ),
                                              IconButton(
                                                  onPressed: () => setState(
                                                      () => _itemCounts++),
                                                  icon: Icon(
                                                    Icons.add,
                                                    size: 16.sp,
                                                  ))
                                            ],
                                          ),
                                        ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Container(
                      height: 10.h,
                      width: 60.w,
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
                            hintText: 'Promo Code',
                            hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                          ),
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Please enter the Promo Code';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, right: 5.w),
                    child: Container(
                      height: 6.5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(child: Text("Apply", style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        color: Colors.white
                      ),),),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> order_detail()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 36.5.h),
                  child: Center(
                    child: Container(
                      height: 7.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                      child: Center(child: Text("Proceed to Checkout", style: GoogleFonts.poppins(
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
    );
  }
}
