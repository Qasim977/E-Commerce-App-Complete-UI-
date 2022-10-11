import 'package:e_commerce_app/screens/Homepage.dart';
import 'package:e_commerce_app/screens/my_cart.dart';
import 'package:e_commerce_app/screens/notification_screen.dart';
import 'package:e_commerce_app/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/const/colors.dart';
import 'profile_screen.dart';
import 'package:sizer/sizer.dart';
class new_nav_bar extends StatefulWidget {
  const new_nav_bar({Key? key}) : super(key: key);

  @override
  State<new_nav_bar> createState() => _new_nav_barState();
}

class _new_nav_barState extends State<new_nav_bar> {
  int currentTab = 0;
  final List<Widget> screens =[
    Homepage(),
    NotificationScreen(),
    SearchScreen(),
    my_cart(),
    ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homepage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home, color: Colors.white,),
        backgroundColor: primaryColor,
        onPressed: (){
          setState(() {
            currentScreen = Homepage();
            currentTab = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = NotificationScreen();
                      currentTab = 0;
                    });
                  },
                    child: Icon(Icons.notifications,size: 22.sp,
                    color: currentTab == 0 ? primaryColor : Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.sp),
                    child: MaterialButton(onPressed: (){
                      setState(() {
                        currentScreen = SearchScreen();
                        currentTab = 1;
                      });
                    },
                      child: Icon(Icons.search, size: 22.sp,
                        color: currentTab == 1 ? primaryColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 0.w, right: 0),
                    child: MaterialButton(onPressed: (){
                      setState(() {
                        currentScreen = my_cart();
                        currentTab = 2;
                      });
                    },
                      child: Icon(Icons.shopping_cart_outlined,size: 22.sp,
                        color: currentTab == 2 ? primaryColor : Colors.black,
                      ),
                    ),
                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = ProfileScreen();
                      currentTab = 3;
                    });
                  },
                    child: Icon(Icons.person_outlined,size: 22.sp,
                      color: currentTab == 3 ? primaryColor : Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
