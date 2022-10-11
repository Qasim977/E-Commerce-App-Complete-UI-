import 'package:e_commerce_app/widgets/order_box.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/address_box.dart';

class ShippingAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(12.0.sp),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 20.sp,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )),
            SizedBox(
              height: 2.h,
            ),
            TextWidget(
                text: 'Shipping Address',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
            SizedBox(
              height: 3.h,
            ),
            AddressBox(),
            SizedBox(
              height: 3.h,
            ),
            AddressBox(),
          ],
        ),
      ),
    );
  }
}
