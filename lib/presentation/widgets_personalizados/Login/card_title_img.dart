import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Card2 extends StatelessWidget {
  const Card2(
      {super.key,
      required this.color,
      required this.imagenURL,
      required this.text1});
  final Color color;
  final String imagenURL;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 1.w),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 8.h,
              width: 36.w,
              child: Container(
                  margin: EdgeInsets.only(left: 14.w),
                  child: Image.asset(imagenURL, fit: BoxFit.scaleDown)),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 14.w),
                child: Text(text1,
                    style: TextStyle(fontSize: 21.sp, fontFamily: 'Chicle')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
