import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

class Rating extends StatefulWidget {
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  late final _ratingController;
  late double _rating;

  int _ratingBarMode = 1;
  double _initialRating = 3.0;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 80.w,
      child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextWidget(text: 'Rating',fontSize: 12.sp,fontWeight: FontWeight.w400,),
                SizedBox(height: 0.5.h,),
                  _ratingBar(_ratingBarMode),

                  ///  The rating assigned value in Double...
                  // TextWidget(text: _rating.toString(), fontSize: 20.sp, fontWeight: FontWeight.bold)

                ],
              ),
    );
  }

  Widget _ratingBar(int mode) {
    return RatingBar.builder(
      glowColor: primaryColor,
      initialRating: _initialRating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      unratedColor: Colors.grey[400],
      itemCount: 5,
      itemSize: 30.0,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) =>
          Icon(
            _selectedIcon ?? Icons.star,
            color: primaryColor,
          ),
      onRatingUpdate: (rating) {
        setState(() {
          _rating = rating;
        });
      },
      updateOnDrag: true,
    );
  }
}
