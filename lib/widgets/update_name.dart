import 'package:e_commerce_app/screens/order_confirmed.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../const/colors.dart';
void update_nameDialog(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext ctx){
        return StatefulBuilder(builder: (context, setState){
          return Center(
            child: Container(
              height: 35.h,
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
                              text: '',
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Text("Update Name", style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none,
                      ),),
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
                                hintText: '',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please fill the field';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: Container(
                              height: 7.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10.sp)
                              ),
                              child: Center(child: Text("Confirm", style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),)),
                            ),
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