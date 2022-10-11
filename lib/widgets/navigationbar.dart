// import 'dart:async';
//
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:e_commerce_app/const/colors.dart';
// import 'package:e_commerce_app/screens/Homepage.dart';
// import 'package:e_commerce_app/screens/notification_screen.dart';
// import 'package:e_commerce_app/screens/profile_screen.dart';
// import 'package:e_commerce_app/screens/search_screen.dart';
// import 'package:e_commerce_app/widgets/notification.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:sizer/sizer.dart';
//
// import '../screens/my_cart.dart';
//
// class NavigationBarWidget extends StatefulWidget {
//   final int bottomNavIndex = 0;
//
//   // const NavigationBarWidget({super.key, required this.bottomNavIndex});
//
//   @override
//   _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
// }
//
// class _NavigationBarWidgetState extends State<NavigationBarWidget>
//     with TickerProviderStateMixin {
//   // final autoSizeGroup = Container();
//   // final autoSizeText = Container();
//   var _bottomNavIndex; //default index of a first screen
//
//   void NavIndex() {
//     if (_bottomNavIndex == 0) {
//       NotificationScreen();
//     }
//     if (_bottomNavIndex == 1) {
//       SearchScreen();
//     }
//   }
//
//   late AnimationController _fabAnimationController;
//   late AnimationController _borderRadiusAnimationController;
//   late Animation<double> fabAnimation;
//   late Animation<double> borderRadiusAnimation;
//   late CurvedAnimation fabCurve;
//   late CurvedAnimation borderRadiusCurve;
//   late AnimationController _hideBottomBarAnimationController;
//
//   Color homeIconColor = Colors.black;
//
//   final iconList = <IconData>[
//     Icons.home_outlined,
//     Icons.notifications_none_outlined,
//     Icons.shopping_cart_outlined,
//     Icons.person_outline_rounded
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _bottomNavIndex = widget.bottomNavIndex;
//     final systemTheme = SystemUiOverlayStyle.light.copyWith(
//       systemNavigationBarColor: primaryColor,
//       systemNavigationBarIconBrightness: Brightness.light,
//     );
//     SystemChrome.setSystemUIOverlayStyle(systemTheme);
//
//     _fabAnimationController = AnimationController(
//       duration: Duration(milliseconds: 500),
//       vsync: this,
//     );
//     _borderRadiusAnimationController = AnimationController(
//       duration: Duration(milliseconds: 500),
//       vsync: this,
//     );
//     fabCurve = CurvedAnimation(
//       parent: _fabAnimationController,
//       curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
//     );
//     borderRadiusCurve = CurvedAnimation(
//       parent: _borderRadiusAnimationController,
//       curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
//     );
//
//     fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
//     borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
//       borderRadiusCurve,
//     );
//
//     _hideBottomBarAnimationController = AnimationController(
//       duration: Duration(milliseconds: 200),
//       vsync: this,
//     );
//
//     Future.delayed(
//       Duration(seconds: 1),
//       () => _fabAnimationController.forward(),
//     );
//     Future.delayed(
//       Duration(seconds: 1),
//       () => _borderRadiusAnimationController.forward(),
//     );
//   }
//
//   bool onScrollNotification(ScrollNotification notification) {
//     if (notification is UserScrollNotification &&
//         notification.metrics.axis == Axis.vertical) {
//       switch (notification.direction) {
//         case ScrollDirection.forward:
//           _hideBottomBarAnimationController.reverse();
//           _fabAnimationController.forward(from: 0);
//           break;
//         case ScrollDirection.reverse:
//           _hideBottomBarAnimationController.forward();
//           _fabAnimationController.reverse(from: 1);
//           break;
//         case ScrollDirection.idle:
//           break;
//       }
//     }
//     return false;
//   }
//
//   @override
//   void didChangeDependencies() {
//     NavIndex();
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       // appBar: AppBar(
//       //   title: Text(
//       //     widget.title,
//       //     style: TextStyle(color: Colors.white),
//       //   ),
//       //   backgroundColor: primaryColor,
//       // ),
//       body: NotificationListener<ScrollNotification>(
//         onNotification: onScrollNotification,
//         child: _bottomNavIndex == 0
//             ? Homepage()
//             : _bottomNavIndex == 1
//                 ? NotificationScreen()
//                 : _bottomNavIndex == 2
//                     ? my_cart()
//
//                     ///Provide cart screen here cut notifications()
//
//                     : ProfileScreen(),
//       ),
//
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: primaryColor,
//         child: Icon(
//           Icons.search,
//           size: 26.sp,
//           color: homeIconColor,
//         ),
//         // child: Homepage();
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
//           setState(() {
//             homeIconColor = Colors.white;
//           });
//           _fabAnimationController.reset();
//           _borderRadiusAnimationController.reset();
//           _borderRadiusAnimationController.forward();
//           _fabAnimationController.forward();
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar.builder(
//         itemCount: iconList.length,
//         tabBuilder: (int index, bool isActive) {
//           final color = isActive ? primaryColor : Colors.black;
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 iconList[index],
//                 size: 26.sp,
//                 color: color,
//               ),
//               const SizedBox(height: 4),
//             ],
//           );
//         },
//         backgroundColor: Colors.white,
//         activeIndex: _bottomNavIndex,
//         splashColor: primaryColor,
//         notchAndCornersAnimation: borderRadiusAnimation,
//         splashSpeedInMilliseconds: 300,
//         notchSmoothness: NotchSmoothness.defaultEdge,
//         gapLocation: GapLocation.center,
//         leftCornerRadius: 0,
//         rightCornerRadius: 0,
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//         hideAnimationController: _hideBottomBarAnimationController,
//         shadow: BoxShadow(
//           offset: Offset(0, 1),
//           blurRadius: 4,
//           spreadRadius: 0.2,
//           color: Colors.grey,
//         ),
//       ),
//     );
//   }
// }
