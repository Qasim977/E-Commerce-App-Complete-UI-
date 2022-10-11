import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterButton extends StatefulWidget {
  final VoidCallback? onChanged;
  final String text;

  FilterButton({super.key, required this.onChanged, required this.text});

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3.5.h,
      width: 26.w,
      child: ElevatedButton(
          onPressed: () {
            // widget.onChanged;
            setState(() {
              isSelected = isSelected == false ? true : false;
            });
          },
          style: ButtonStyle(
            // fixedSize: MaterialStateProperty.all<Size>(1),
              textStyle: MaterialStateProperty.all<TextStyle>(GoogleFonts.poppins(
                  fontSize: 14.sp, fontWeight: FontWeight.w500)),
              backgroundColor: MaterialStateProperty.all(
                  isSelected ? primaryColor : Colors.grey[300]),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.sp),
              ))),
          child: TextWidget(
            text: widget.text,
            fontWeight: FontWeight.w400,
            fontSize: 9.sp,
          )),
    );
  }
}
