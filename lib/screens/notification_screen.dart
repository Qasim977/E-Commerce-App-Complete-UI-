import 'package:e_commerce_app/widgets/notification.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                    text: 'Notifications',
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w700),
                PopupMenuButton(
                  padding: EdgeInsets.only(right: 4.w, left: 15.w),
                  onSelected: (value){
                   if(value=='a')
                 print('Mute Notifications');
                   if(value=='b')
                 print('Clear');
                  },
                  icon: Icon(Icons.more_vert, size: 24.sp),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: TextWidget(
                        text: 'Mute Notifications',
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                      value: 'a',
                    ),PopupMenuItem(
                      child: TextWidget(
                        text: 'Clear',
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                      value: 'b',
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemExtent: 19.w,
                itemBuilder: (BuildContext context, int index) =>
                    Notifications(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
