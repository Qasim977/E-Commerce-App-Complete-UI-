import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/widgets/filtersDialog.dart';
import 'package:e_commerce_app/widgets/search_result.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(left: 3.sp),
        child: Column(
          children: [
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 75.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.sp),
                        border: Border.all(color: Colors.grey, width: 0.2)),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: ThemeData().colorScheme.copyWith(
                              primary: primaryColor,
                            ),
                      ),
                      child: TextFormField(
                        cursorColor: primaryColor,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(fontSize: 13.sp),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 6.sp),
                          hintText: 'What are you looking for?',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 22.sp,
                          ),
                          prefixIconColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.sp)),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) {},
                      ),
                    )),
                InkWell(
                  onTap: (){
                    filtersDialog(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 2.w),
                    child: Image.asset('assets/filtter.png'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemExtent: 14.h,
                itemBuilder: (BuildContext context, int index) => SearchResults(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
