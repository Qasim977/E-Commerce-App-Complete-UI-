import 'package:e_commerce_app/widgets/filters_button.dart';
import 'package:e_commerce_app/widgets/rating_widget.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void filtersDialog(BuildContext context) {
  showDialog(
    // barrierDismissible: false,
    context: context,
    builder: (BuildContext cxt) {
      return StatefulBuilder(builder: (context, setState) {
        return Center(
          child: Container(
              height: 65.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.sp)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 8.0.sp, right: 8.sp,),
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
                            text: 'Filters',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600)
                      ],
                    ),
                    SizedBox(height: 1.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                            text: 'Category',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 0.3.h,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FilterButton(
                                  text: 'Category 1', onChanged: () {}),
                              FilterButton(
                                  text: 'Category 2', onChanged: () {}),
                              FilterButton(
                                  text: 'Category 3', onChanged: () {}),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 0.9.h,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FilterButton(
                                  text: 'Category 1', onChanged: () {}),
                              FilterButton(
                                  text: 'Category 2', onChanged: () {}),
                              FilterButton(
                                  text: 'Category 3', onChanged: () {}),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Center(
                          child: Container(
                            height: 0.5,
                            width: 79.w,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 0.5.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                            text: 'Brand',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 0.3.h,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FilterButton(
                                  text: 'Brand 1', onChanged: () {}),
                              FilterButton(
                                  text: 'Brand 2', onChanged: () {}),
                              FilterButton(
                                  text: 'Brand 3', onChanged: () {}),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Center(
                          child: Container(
                            height: 0.5,
                            width: 79.w,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 0.5.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                            text: 'Delivery',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 0.3.h,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 1.8.w,),
                              FilterButton(
                                  text: 'Cash on delivery', onChanged: () {}),
                               SizedBox(width: 1.7.w,),
                              FilterButton(
                                  text: 'Free delivery', onChanged: () {}),
                              ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Center(
                          child: Container(
                            height: 0.5,
                            width: 79.w,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 0.5.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                            text: 'Location',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 0.3.h,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 1.7.w,),
                              FilterButton(
                                  text: 'Pakistan', onChanged: () {}),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Center(
                          child: Container(
                            height: 0.5,
                            width: 79.w,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 0.5.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                            text: 'Price range',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                        SizedBox(height: 0.3.h,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 1.8.w,),
                              FilterButton(
                                  text: 'min', onChanged: () {}),
                              SizedBox(width: 1.7.w,),
                              FilterButton(
                                  text: 'max', onChanged: () {}),
                              ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Center(
                          child: Container(
                            height: 0.5,
                            width: 79.w,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 0.5.h,),
                    Rating(),

                  ],
                ),
              )),
        );
      });
    },
  );
}
