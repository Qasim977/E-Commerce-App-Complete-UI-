import 'package:e_commerce_app/screens/favourite_screen.dart';
import 'package:e_commerce_app/screens/my_orders.dart';
import 'package:e_commerce_app/screens/personal_details.dart';
import 'package:e_commerce_app/screens/settings_screen.dart';
import 'package:e_commerce_app/screens/shippingaddress_screen.dart';
import 'package:e_commerce_app/widgets/card_detail.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/profile_container.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 24.h,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  TextWidget(
                      text: 'Profile',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w700),
                  SizedBox(
                    height: 1.h,
                  ),
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 12.5.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 6.0.sp, right: 12.sp),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(60.sp),
                                child: Image.asset(
                                  'assets/selinadp.jpg',
                                  width: 70.sp,
                                  height: 70.sp,
                                )),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  text: 'Ali Arshad',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600),
                              TextWidget(
                                  text: 'ali@gmail.com',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.grey[100],
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>personal_detail()));
                    },
                    child: ProfileContainer(
                      icon: Icon(Icons.person_outline),
                      text: 'Personal Details',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyOrdersScreen()));
                    },
                    child: ProfileContainer(
                      icon: Icon(Icons.shopping_bag_outlined),
                      text: 'My Orders',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavouritesScreen()));
                    },
                    child: ProfileContainer(
                      icon: Icon(Icons.favorite_border_outlined),
                      text: 'Favourites',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShippingAddressScreen()));
                    },
                    child: ProfileContainer(
                      icon: Icon(Icons.location_on_outlined),
                      text: 'Shipping Address',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      cardDialog(context);
                    },
                    child: ProfileContainer(
                      icon: Icon(Icons.payment_outlined),
                      text: 'Payment Methood',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsScreen()));
                    },
                    child: ProfileContainer(
                      icon: Icon(Icons.settings),
                      text: 'Settings',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
