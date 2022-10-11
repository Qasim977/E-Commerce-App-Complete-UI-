import 'package:e_commerce_app/screens/intro1_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return Sizer(builder:(BuildContext context, Orientation orientation, DeviceType deviceType) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primarySwatch: Colors.blue,
    ),
    home: intro_1(),
    );
    }
    );
  }
}
